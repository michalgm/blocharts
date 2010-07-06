<?php
$workingdir = '/home/dameat/public_html/pondscum/blocharts/';
$lilydir = $workingdir . ($_REQUEST['dir'] ? $_REQUEST['dir'] : 'blo');
$keys = array('Eb'=>'a', 'Bb'=>'d', 'C'=>'c', 'F'=>'g');
$clefs = array('treble', 'bass', 'alto', 'tenor');
$layouts = array('letter'=>'"letter"', 'lyre'=>'"a5" \'landscape');
$octaves = array('+2'=> "''", '+1'=>"'", '0'=>'', "-1"=>',','-2'=>',,');
$instruments = array('bass'=>'tuba', 'melody'=>'trumpet', 'tenor'=>'trombone', 'pahs'=>'trombone', 'riffTwo'=>'clarinet', 'harmony'=>'clarinet', 'chordLo'=>'trombone', 'chordMid'=>'baritone sax', 'bari'=>'baritone sax');

if($_GET['file']) {
	$file = $_GET['file'];
	if (substr($file, 0, 1) == "/" || strpos($file, '..') !== false) {
		error('Invalid filename');
	}
	$lily = processFile($file, $_REQUEST['dir']);
	$lily = buildLayout($lily);
	createOutput($lily);
	
	#if($_GET['part'] == 'midi') { returnMidi($lily); }
	if (strpos($score, 'changes')) {
		#$changes = '\changes';
	}
	#createOutput($file, $score);
} else {
	header('Content-Type: text/html; charset=utf-8'); 
	$dirh = opendir($lilydir);
	while (($file = readdir($dirh)) !== false) {
		$lilies[] = processFile($file, $_REQUEST['dir']);
	}
	usort($lilies, 'lilysort');
	foreach ($lilies as $lily) { 
		if ($lily) { 
			$index .= "<li><a href='#$lily[file]'>$lily[title]</a>";
			$forms .= printFileSelect($lily);
		}
	}
	print "$index<hr>$forms";
}

function createOutput($lily) {
	$part = $_GET['part'];
	$contents = $lily['source'].$lily['layout'];
	$filename = $lily[file];
	$outfile = str_replace(' ', '_', $lily['title']). "-$key-$part";
	if ($part == 'source') {
		header('Content-Type: text/html; charset=utf-8'); 
		print "<pre>$contents</pre>";
		exit;
	}
	if($part != 'midi') { $part = 'pdf'; }
	$out = fopen("/tmp/$filename", 'w');
	fwrite($out,$contents);
	fclose($out);
	exec("lilypond -o '/tmp/$filename' '/tmp/$filename' 2>&1", $error);
	if ($_GET['debug']) { print "<pre>$contents"; print "<hr>".$error."<hr>".join('<br>', $output); exit; }
	if (!file_exists("/tmp/$filename.$part") || filesize("/tmp/$filename.$part") == 0) { 
		error("Lilypond failed. Here is the output:<hr> ".implode("<br>", $error));
	}
	header("Cache-Control: no-cache, must-revalidate"); // HTTP/1.1
	header("Expires: Sat, 26 Jul 1997 05:00:00 GMT"); // Date in the past
	if ($part == 'midi') { 
		header('Content-type: audio/midi');
		header('Content-Disposition: attachment; filename="'.$outfile.'.mid"');
		print file_get_contents("/tmp/$filename.midi");
		unlink("/tmp/$filename.midi");
	} else { 
		if (!file_exists("/tmp/$filename.pdf")) { 
			error("Lilypond failed: $error");
		}
		header('Content-type: application/pdf');
		header('Content-Disposition: attachment; filename="'.$lily[filename].'.pdf"');
		print file_get_contents("/tmp/$filename.pdf");
		unlink("/tmp/$filename.pdf");
		unlink("/tmp/$filename.ps");
		unlink("/tmp/$filename");
	}	
}

function processFile($file, $dir='blo') {
	global $lilydir;
	$lily = array();
	if (!file_exists("$lilydir/$file")) { 
		error("File $lilydir/$file does not exist");
	}
	if (preg_match('/.ly$/', $file)){
		$score = file_get_contents("$lilydir/$file");
		preg_match_all('/%Part: (\w+)/i', $score, $parts);
		preg_match('/title ?=[^"]*"([^"]+)"/', $score, $title);
		preg_match('/tempo(.*)$/m', $score, $tempo);
		$lily['title'] = $title[1];
		$lily['parts'] = $parts[1];
		$lily['tempo'] = $tempo[1] ? $tempo[1] : ' 4 = 100';
		$lily['file'] = $file;
		$lily['source'] = preg_replace('/\%layout.*/si', '', $score);
		$lily['changes'] = array_search('changes', $lily['parts']) ? 1 : 0;
		$lily['words'] = array_search('words', $lily['parts']) ? 1 : 0;
		$lily['dir'] = $dir;
	}
	return $lily;
}

function printFileSelect($lily) {	
	global $keys, $clefs, $octaves, $layouts;
	$output .= "<a name='$lily[file]'><div style='position: relative;'><form>
		<input name='file' type='hidden' value='$lily[file]'>
		<input name='dir' type='hidden' value='$lily[dir]'>
		<b>".html_encode($lily['title'])."</b>";
	foreach ($lily['parts'] as $part) { 
		$partselect .= "<option value='$part'>".ucwords($part)."</option>";
	}
	foreach (array_keys($keys) as $key) { $keyselect .= "<option value='$key'>".ucwords($key)."</option>"; }
	foreach ($clefs as $clef) { $clefselect .= "<option value='$clef'>".ucwords($clef)."</option>"; }
	foreach (array_keys($octaves) as $octave) { $default = $octave == 0 ? "selected='selected'" : ''; $octaveselect .= "<option $default value='$octave'>".ucwords($octave)."</option>"; }
	foreach (array_keys($layouts) as $layout) { $layoutselect .= "<option value='$layout'>".ucwords($layout)."</option>"; }

	$output.= "<br><a href='?file=$lily[file]&dir=$lily[dir]&part=midi'>play midi</a>";
	$output.= " - <a href='?file=$lily[file]&dir=$lily[dir]&part=score'>score </a>";
	$output.= " - <a href='?file=$lily[file]&dir=$lily[dir]&part=source'>source</a>";
	$output.= "<div class='options' style='position: relative;'> <div class='left'>
				<div class='part'>Part: <select name='part'>$partselect</select></div>
				<div class='key'>Key: <select name='key'>$keyselect</select></div>
				<div class='clef'>Clef: <select name='clef'>$clefselect</select></div>
			</div>
			<div class='right' style='position: absolute; left: 180px; top: 0px;'>
				<div class='octave'>Octave: <select name='octave'>$octaveselect</select></div>
				<div class='layout'>Layout: <select name='page'>$layoutselect</select></div>
		";
	if ($lily['words']) {
		$output.= "<div class='lyrics'>Include Lyrics: <input type='checkbox' name='words'></div>";
	}
	$output.= " 	<br>Debug <input type='checkbox' name='debug' value='1'><br>
				</div>
				<input style='margin: auto; text=align: center;' type='submit' value='Download PDF'>
			</form></div></div>
			";
	return $output;
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
	if ($lily['changes'] && $page != 'lyre') { $changes = "\n\t\t\\new ChordNames { \\set chordChanges = ##t \\changes }"; }
	if ($lily['words']) { $words = " \n\t\words"; }
	if ($page) {  
		$layout .= "\n#(set-default-paper-size ".$layouts[$page].')';
	}
	if ($part == 'score'  || $part == 'source' || $part == 'midi') {
		$parts = $lily['parts'];
		$layout .= "\n\\book {\n\t\\score { <<\n\t\t\\tempo ".$lily['tempo']. ' ';
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
		$poet = "$key ".ucwords($part);
		$layout .="
		\\book { 
			\\header{ poet = \"$poet\" }
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
	$lily['layout'] = $layout;
	$lily['filename'] = $lily['title']."-$key-".ucwords($part);
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

function html_encode($var) {
		return htmlentities($var, ENT_QUOTES, 'UTF-8') ;
}

function error($string) {
	print "<b>An error occured:</b> $string";
	exit;
}

function lilysort($a, $b) { 
	if ($a['title'] && $b['title']) {
		return strcasecmp($a['title'], $b['title']);
	} else {
		return strcasecmp($a['file'], $b['file']);
	}
}
