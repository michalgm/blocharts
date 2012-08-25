<?php
include('pondscum.php');

$workingdir = '/home/dameat/public_html/pondscum/blocharts/';
$dir = isset($_REQUEST['dir']) ?  $_REQUEST['dir'] : "blo";
$lilydir = $workingdir . $dir;

if(isset($_GET['file'])) {
	$file = $_GET['file'];
	if (substr($file, 0, 1) == "/" || strpos($file, '..') !== false) {
		error('Invalid filename');
	}
	$lily = processFile($file, $_REQUEST['dir']);
	if ($lily) { 
		$lily['outputoptions'] = $_GET;
		$lily = buildLayout($lily);
		if ($lily) { 
			printHTTPHeader($lily, $_REQUEST['part']);
			print createOutput($lily);
		}
	}	
	#if($_GET['part'] == 'midi') { returnMidi($lily); }
	#if (strpos($score, 'changes')) {
		#$changes = '\changes';
	#}
	#createOutput($file, $score);
} else {
	header('Content-Type: text/html; charset=utf-8'); 
	$dirh = opendir($lilydir);
	while (($file = readdir($dirh)) !== false) {
		if ($file == 'include.ly') { continue; }
		$lilies[] = processFile($file, $dir);
	}
	usort($lilies, 'lilysort');
	$index = "";
	$forms = "";
	foreach ($lilies as $lily) { 
		if ($lily) { 
			$index .= "<li><a href='#$lily[file]'>$lily[title]</a>";
			$forms .= printFileSelect($lily);
		}
	}
	print "$index<hr>$forms";
}


