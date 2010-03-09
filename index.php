<?php
$lilydir = '/home/dameat/public_html/pondscum/blocharts/blo/';
$keys = array('Eb'=>'a', 'Bb'=>'d', 'C'=>'c', 'F'=>'g');
$clefs = array('treble', 'bass', 'alto', 'tenor');
$layouts = array('letter'=>'"a4"', 'lyre'=>'"a5" \'landscape');
$octaves = array('+2'=> "''", '+1'=>"'", '0'=>'', "-1"=>',','-2'=>',,');
$instruments = array('bass'=>'tuba', 'melody'=>'trumpet', 'tenor'=>'trombone', 'pahs'=>'trombone', 'riffTwo'=>'clarinet');
function returnMidi($lily) { 
	global $lilydir;
}

if($_GET['file']) {
	$file = $_GET['file'];
	$lily = processFile($file);
	$lily = buildLayout($lily);
	$score = $lily[source].$lily[layout];
	createOutput($file, $score);
	
	#if($_GET['part'] == 'midi') { returnMidi($lily); }
	if (strpos($score, 'changes')) {
		#$changes = '\changes';
	}
	#createOutput($file, $score);
} else {
	$dir = opendir($lilydir);
	$files = readdir($dir);
	while (($file = readdir($dir)) !== false) {
		$lily = processFile($file);
		if ($lily) { 
			printFileSelect($lily);
		}
	}
}

function createOutput($filename, $contents) {
	if ($_GET[part] == 'source') {
		header('Content-type: text/html');
		print "<pre>$contents</pre>";
		exit;
	}
	$out = fopen("/tmp/$filename", 'w');
	fwrite($out,$contents);
	fclose($out);
	$error = exec("lilypond -o /tmp/$filename /tmp/$filename", $output);
	if ($_GET['debug']) { print $contents; print "<hr>".$error."<hr>".join('<br>', $output); exit; }
	if ($_GET[part] == 'midi') { 
		header('Content-type: audio/midi');
		header('Content-Disposition: attachment; filename="'.$filename.'.mid"');
		print file_get_contents("/tmp/$filename.midi");
		#unlink("/tmp/$filename.midi");
	} else { 
		header('Content-type: application/pdf');
		header('Content-Disposition: attachment; filename="downloaded-'.$key.'.pdf"');
		print file_get_contents("/tmp/$filename.pdf");
		#unlink("/tmp/$filename.pdf");
		#unlink("/tmp/$filename.ps");
		#unlink("/tmp/$filename");
	}	
}

function processFile($file) {
	global $lilydir;
	$lily = array();
	if (preg_match('/.ly$/', $file)){
		$score = file_get_contents("$lilydir/$file");
		preg_match_all('/%Part: (\w+)/i', $score, $parts);
		preg_match('/title ?= ?"([^"]+)"/', $score, $title);
		preg_match('/tempo(.*)$/m', $score, $tempo);
		$lily[title] = $title[1];
		$lily[parts] = $parts[1];
		$lily[tempo] = $tempo[1] ? $tempo[1] : ' 4 = 100';
		$lily[file] = $file;
		$lily[source] = preg_replace('/\%layout.*/si', '', $score);
		$lily[changes] = array_search('changes', $lily[parts]) ? 1 : 0;
		$lily[words] = array_search('words', $lily[parts]) ? 1 : 0;
	}
	return $lily;
}

function printFileSelect($lily) {	
	global $keys, $clefs, $octaves, $layouts;
	print "<div style='position: relative;'><form><input name='file' type='hidden' value='$lily[file]'>
	<b>$lily[title]</b>";
	foreach ($lily[parts] as $part) { 
		$partselect .= "<option value='$part'>".ucwords($part)."</option>";
	}
	foreach (array_keys($keys) as $key) { $keyselect .= "<option value='$key'>".ucwords($key)."</option>"; }
	foreach ($clefs as $clef) { $clefselect .= "<option value='$clef'>".ucwords($clef)."</option>"; }
	foreach (array_keys($octaves) as $octave) { $default = $octave == 0 ? "selected='selected'" : ''; $octaveselect .= "<option $default value='$octave'>".ucwords($octave)."</option>"; }
	foreach (array_keys($layouts) as $layout) { $layoutselect .= "<option value='$layout'>".ucwords($layout)."</option>"; }

	print "<br><a href='?file=$lily[file]&part=midi'>play midi</a>";
	print " - <a href='?file=$lily[file]&part=score'>score </a>";
	print " - <a href='?file=$lily[file]&part=source'>source</a>";
	print "<div class='options' style='position: relative;'> <div class='left'>
				<div class='part'>Part: <select name='part'>$partselect</select></div>
				<div class='key'>Key: <select name='key'>$keyselect</select></div>
				<div class='clef'>Clef: <select name='clef'>$clefselect</select></div>
			</div>
			<div class='right' style='position: absolute; left: 180px; top: 0px;'>
				<div class='octave'>Octave: <select name='octave'>$octaveselect</select></div>
				<div class='layout'>Layout: <select name='page'>$layoutselect</select></div>
		";
	if ($lily[words]) {
		print "<div class='lyrics'>Include Lyrics: <input type='checkbox' name='words'></div>";
	}
	print " 	<!--<br>Debug <input type='checkbox' name='debug' value='1'><br>-->
				</div>
				<input style='margin: auto; text=align: center;' type='submit' value='Download PDF'>
			</form></div></div>
			";
}

function buildLayout($lily) {
	global $keys, $layouts, $octaves, $instruments;
	$key = $_GET['key'];
	$clef = $_GET['clef'];
	$page = $_GET['page'];
	$part = $_GET['part'];
	$showwords = $_GET['words'];
	$octave = stripslashes($_GET['octave']);
	if ($part == 'score' || $part == 'source') { $page = 'letter'; }
	$layout = "%%Generated layout";
	if ($lily[changes]) { $changes = "\n\t\t\\new ChordNames { \\set chordChanges = ##t \\changes }"; }
	if ($lily[words]) { $words = " \n\t\words"; }
	if ($page) {  
		$layout .= "\n#(set-default-paper-size ".$layouts[$page].')';
	}
	if ($part == 'score'  || $part == 'source' || $part == 'midi') {
		$parts = $lily['parts'];
		$layout .= "\n\\book {\n\t\\score { <<\n\t\t\\tempo ".$lily[tempo]. ' ';
		if ($part != 'midi') { $layout .= $changes; }
		foreach ($parts as $lilypart) { 
			if ($lilypart == 'changes' || $lilypart == 'words') { continue; }
			$instrument = $instruments[$lilypart] ? $instruments[$lilypart] : 'alto sax';
			$clef = $lilypart == 'bass' ? 'bass' : 'treble';
			$layout .="\n\t\t";
			if ($part == 'midi') { $layout .= '\unfoldRepeats '; }
			$layout .= "\\new Staff {  \\set Staff.midiInstrument = #\"$instrument\" \\clef $clef";
			$layout .= "\n\t\t\t\\$lilypart\n\t\t}";
		}
		$layout .= "\n\t>> ";
		if ($part == 'midi') { $layout .= "\n\t\\midi { } "; }
		$layout .= "} $words \n}";
	} else { 
		$octave = getOctave($key, $part, $clef, $octaves[$octave]);
		$layout .="
		\\book { 
			\\score { <<
				$changes
				\\new Staff { \\clef $clef \\transpose c ".$keys[$key].$octave." 
				\\$part
				}
			>> }";
		if ($showwords) {
			$layout .= $words;
		} 
		$layout .= "\n} ";
	}
	$lily[layout] = $layout;
	return $lily;	
}

function getOctave($key, $part, $clef, $octave) {
	if ($key == 'a' || $key == 'g') { 
		if (strpos($octave, "'") !== false) { 
			$octave = substr_replace($octave, '', -1, 1);
		} else {
			$octave.=",";
		}
	}
	if ($clef == 'bass') { 
		if (strpos($octave, "'") !== false) { 
			$octave = substr_replace($octave, '', -1, 1);
		} else {
			$octave.=","; 
		}
	} else if ($part == 'bass' && $clef == 'treble') {
		if (strpos($octave, ",") !== false) { 
			$octave = substr_replace($octave, '', -1, 1);
		} else {
			$octave.="'";
		}
	}
	return $octave;
}
