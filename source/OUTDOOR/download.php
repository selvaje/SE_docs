<?php
$file = './source/OUTDOOR/Gioia_Alberobello_gravel.gpx'; // Update with the correct file path
header('Content-Type: application/octet-stream');
header('Content-Disposition: attachment; filename="' . basename($file) . '"');
header('Content-Length: ' . filesize($file));
readfile($file);
exit;
?>