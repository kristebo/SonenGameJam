<!DOCTYPE html>
<?php include_once("../common/headermenu.html"); ?>
<div id='body' style ='background-color: #f49896;overflow: hidden;'>
	<input class = "collapsable" type = "checkbox" id="show6">
	<label for="show6"><div class = "leftaligned">Fall 2015</div> <div class = "rightaligned">Abandoned</div></label>
	<div class = "collapsebody">
		<?php include_once("sections/F2015.html"); ?>
	</div>
	<input class = "collapsable" type = "checkbox" id="show5">
	<label for="show5"><div class = "leftaligned">Spring 2015</div> <div class = "rightaligned">Float</div></label>
	<div class = "collapsebody">
		<?php include_once("sections/S2015.html"); ?>
	</div>
	<input class = "collapsable" type = "checkbox" id="show4">
	<label for="show4"><div class = "leftaligned">Fall 2014</div> <div class = "rightaligned">Limit</div></label>
	<div class = "collapsebody">
		<?php include_once("sections/F2014.html"); ?>
	</div>
	<input class = "collapsable" type = "checkbox" id="show3">
	<label for="show3"><div class = "leftaligned">Spring 2014</div> <div class = "rightaligned">Coupled</div></label>
	<div class = "collapsebody">
		<?php include_once("sections/S2014.html"); ?>
	</div>
	<input class = "collapsable" type = "checkbox" id="show2">
	<label for="show2"><div class = "leftaligned">Fall 2013</div> <div class = "rightaligned">Geometry</div></label>
	<div class = "collapsebody">
		<?php include_once("sections/F2013.html"); ?>
	</div>
	<input class = "collapsable" type = "checkbox" id="show1">
	<label for="show1"><div class = "leftaligned">Spring 2013</div> <div class = "rightaligned">Escape</div></label>
	<div class = "collapsebody">
		<?php include_once("sections/S2013.html"); ?>
	</div>
</div>
<?php include_once("../common/footer.html"); ?>
