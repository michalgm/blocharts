<?php

$keys = array('Eb'=>'a', 'Bb'=>'d', 'C'=>'c', 'F'=>'g');
$clefs = array('treble', 'bass', 'alto', 'tenor');
$layouts = array('letter'=>'"letter"', 'lyre'=>'"b6" \'landscape');
$octaves = array('+2'=> "''", '+1'=>"'", '0'=>'', "-1"=>',','-2'=>',,');
$instruments = array('bass'=>'tuba', 'melody'=>'trumpet', 'tenor'=>'trombone', 'pahs'=>'trombone', 'riffTwo'=>'clarinet', 'harmony'=>'clarinet', 'chordLo'=>'trombone', 'chordMid'=>'baritone sax', 'bari'=>'baritone sax');

function printHTTPHeader($lily, $part) {
	global $_REQUEST;
	if (isset($_REQUEST['debug'])) {
		header('Content-Type: text/html; charset=utf-8'); 
		return;
	} 
	$filename = $lily['filename'];
	header("Cache-Control: no-cache, must-revalidate"); // HTTP/1.1
	header("Expires: Sat, 26 Jul 1997 05:00:00 GMT"); // Date in the past
 
	if ($part =='midi') {
		header('Content-type: audio/midi');
		header('Content-Disposition: attachment; filename="'.$filename.'.mid"');
	} elseif ($part =='source') {
		header('Content-type: text/x-lilypond');
		header('Content-Disposition: attachment; filename="'.$filename.'.ly"');
	} else {
		header('Content-type: application/pdf');
		header('Content-Disposition: attachment; filename="'.$filename.'.pdf"');
	}
}

function createOutput($lily) {
	$part = $lily['outputoptions']['part'];
	$contents = $lily['source'].$lily['layout'];
	$filename = $lily['file'];
	$output = "";
	if ($part == 'source') {
		$output =  "$contents";
	} else {
		if($part != 'midi') { $part = 'pdf'; }
		$out = fopen("/tmp/$filename", 'w');
		fwrite($out,$contents);
		fclose($out);
		exec("lilypond -o '/tmp/$filename' '/tmp/$filename' 2>&1", $error);
		if (isset($lily['outputoptions']['debug'])) { 
			$output = "<pre>$contents<hr>".implode('<br>', $error)."<hr>".print_r($output, 1);
		} else {
			if (!file_exists("/tmp/$filename.$part") || filesize("/tmp/$filename.$part") == 0) { 
				error("Lilypond failed. Here is the output:<hr> ".implode("<br>", $error));
				return;
			}
			if ($part == 'midi') { 
				$output = file_get_contents("/tmp/$filename.midi");
				unlink("/tmp/$filename.midi");
			} else { 
				if (!file_exists("/tmp/$filename.pdf")) { 
					error("Lilypond failed: $error");
					return;
				}
				$output = file_get_contents("/tmp/$filename.pdf");
				unlink("/tmp/$filename.pdf");
				unlink("/tmp/$filename.ps");
				unlink("/tmp/$filename");
			}
		}	
	}
	return $output;
}

function processFile($file, $dir='blo') {
	global $lilydir;
	$lily = array();
	if (!file_exists("$lilydir/$file")) { 
		error("File $lilydir/$file does not exist");
		return;
	}
	if (preg_match('/.ly$/', $file)){
		$score = file_get_contents("$lilydir/$file");
		preg_match_all('/%Part: (\w+)/i', $score, $parts);
		preg_match('/title ?=[^"]*"([^"]+)"/', $score, $title);
		preg_match('/tempo(.*)$/m', $score, $tempo);
		$lily['title'] = $title[1];
		$lily['parts'] = $parts[1];
		$lily['tempo'] = isset($tempo[1]) ? $tempo[1] : ' 4 = 100';
		$lily['file'] = $file;
		$lily['source'] = preg_replace('/\%layout.*/si', '', $score);
		$lily['changes'] = array_search('changes', $lily['parts']) ? 1 : 0;
		$lily['words'] = (array_search('words', $lily['parts']) && ! strstr($score, 'words = \markup { }')) ? 1 : 0;
		$lily['dir'] = $dir;
	}
	return $lily;
}

function printFileSelect($lily) {	
	global $keys, $clefs, $octaves, $layouts;
	$output = "<a name='$lily[file]'><div style='position: relative;'><form>
		<input name='file' type='hidden' value='$lily[file]'>
		<input name='dir' type='hidden' value='$lily[dir]'>
		<b>".html_encode($lily['title'])."</b>";
	$partselect = "";
	$keyselect = "";
	$octaveselect = "";
	$clefselect = "";
	$layoutselect = "";
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
	$output.= "<div class='naturalize'>Naturalize Accidentals: <input type='checkbox' name='naturalize' checked='1'></div>";
	$output.= " 	<br>Debug <input type='checkbox' name='debug' value='1'><br>
				</div>
				<input style='margin: auto; text=align: center;' type='submit' value='Download PDF'>
			</form></div></div>
			";
	return $output;
}

function buildLayout($lily) {
	global $keys, $layouts, $octaves, $instruments, $naturalize_function;
	$part = $lily['outputoptions']['part'];
	$key = $lily['outputoptions']['key'];
	if (! $key) { $key = 'C'; }
	$showwords = isset($lily['outputoptions']['words']) ? $lily['outputoptions']['words'] : "";
	if ($part == 'score' || $part == 'source') { $page = 'letter'; }
	$layout = "%%Generated layout";
	if ($lily['outputoptions']['naturalize']) {
		$layout .= $naturalize_function;
	}
	$changes = "";
	if ($lily['changes']) { $changes = "\n\t\t\\transpose c ".$keys[$key]." \\new ChordNames { \\set chordChanges = ##t \\changes }"; }
	$words = "";
	if ($lily['words']) { $words = " \n\t\words"; }
	if ($part == 'score'  || $part == 'source' || $part == 'midi') {
		$parts = $lily['parts'];
		$layout .= "\n#(set-default-paper-size ".$layouts[$page].')';
		$layout .= "\n\\book {\n\t\\score { <<\n\t\t\\tempo ".$lily['tempo']. ' ';
		if ($part != 'midi') { $layout .= $changes; }
		foreach ($parts as $lilypart) { 
			if ($lilypart == 'changes' || $lilypart == 'words') { continue; }
			$instrument = isset($instruments[$lilypart]) ? $instruments[$lilypart] : 'alto sax';
			$clef = $lilypart == 'bass' ? 'bass' : 'treble';
			$layout .="\n\t\t";
			if ($part == 'midi') { $layout .= '\unfoldRepeats '; }
			$layout .= "\\new Staff \\with { \\consists \"Volta_engraver\" } {  \\set Staff.midiInstrument = #\"$instrument\" \\clef $clef";
			$layout .= "\n\t\t\t\\$lilypart\n\t\t}";
		}
		$layout .= "\n\t>> \\layout { \\context { \\Score \\remove \"Volta_engraver\" } } ";
		if ($part == 'midi') { $layout .= "\n\t\\midi { } "; $words = "";}
		$layout .= "} $words \n}";
	} else { 
		$page = $lily['outputoptions']['page'];
		$clef = $lily['outputoptions']['clef'];
		$octave = stripslashes($lily['outputoptions']['octave']);
		$octave = getOctave($key, $part, $clef, $octaves[$octave]);
		$poet = "$key ".ucwords($part);
		$staffspacing = "";
		if($page == 'lyre') { 
			$layout .= "\n#(set-global-staff-size 15)\n"; 
			$staffspacing = "\\override Staff.VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)";
			$changes = "";
		} else {
			$layout .= "\n#(set-default-paper-size ".$layouts[$page].')';
		}
		$naturalize = "";
		if ($lily['outputoptions']['naturalize']) {
			$naturalize = "\\naturalizeMusic ";
		}
		$layout .="
		\\book { 
			\\header{ poet = \"$poet\" }
			\\score { <<
				$changes
				\\new Staff \\with { \\consists \"Volta_engraver\" } { 
					$staffspacing	
					\\clef $clef 
				$naturalize \\transpose c ".$keys[$key].$octave."
				\\$part
				}
			
			>> 
			\\layout { \\context { \\Score \\remove \"Volta_engraver\" } } 
	
			}
		
		";
		if ($showwords) {
			$layout .= $words;
		} 
		$layout .= "\n} ";
	}
	$lily['layout'] = $layout;
	$keyname = "";
	if (isset($key)) { 
		$keyname = "-$key";
	}
	$lily['filename'] = $lily['title']."$keyname-".ucwords($part);
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
}

function lilysort($a, $b) { 
	if (isset($a['title']) && isset($b['title'])) {
		return strcasecmp($a['title'], $b['title']);
	} else if(isset($a['file']) && isset($b['file'])) {
		return strcasecmp($a['file'], $b['file']);
	}
}

$naturalize_function = "
%------------------Code to 'naturalize' music - get rid of double-sharps, E#, etc.-----------------
#(define (naturalize-pitch p)
  (let ((o (ly:pitch-octave p))
        (a (* 4 (ly:pitch-alteration p)))
        ;; alteration, a, in quarter tone steps,
        ;; for historical reasons
        (n (ly:pitch-notename p)))
    (cond
     ((and (> a 1) (or (eq? n 6) (eq? n 2)))
      (set! a (- a 2))
      (set! n (+ n 1)))
     ((and (< a -1) (or (eq? n 0) (eq? n 3)))
      (set! a (+ a 2))
      (set! n (- n 1))))
    (cond
     ((> a 2) (set! a (- a 4)) (set! n (+ n 1)))
     ((< a -2) (set! a (+ a 4)) (set! n (- n 1))))
    (if (< n 0) (begin (set! o (- o 1)) (set! n (+ n 7))))
    (if (> n 6) (begin (set! o (+ o 1)) (set! n (- n 7))))
    (ly:make-pitch o n (/ a 4))))

#(define (naturalize music)
  (let ((es (ly:music-property music 'elements))
        (e (ly:music-property music 'element))
        (p (ly:music-property music 'pitch)))
    (if (pair? es)
       (ly:music-set-property!
         music 'elements
         (map (lambda (x) (naturalize x)) es)))
    (if (ly:music? e)
       (ly:music-set-property!
         music 'element
         (naturalize e)))
    (if (ly:pitch? p)
       (begin
         (set! p (naturalize-pitch p))
         (ly:music-set-property! music 'pitch p)))
    music))

naturalizeMusic =
#(define-music-function (parser location m)
  (ly:music?)
  (naturalize m))
%-----------------End Naturalization code---------------
";

?>
