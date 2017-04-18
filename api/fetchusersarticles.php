<?php
	include("connection.php");
	
	$author_name=$_GET['author_name'];

	if($type=="category"){
		$query="SELECT `postid`,`topic`,`shortinfo`,`subtime`,`author` FROM `posts` WHERE author='$author_name' order by postid desc";
		$r=mysqli_query($connection,$query);
		$result = array();

	 	while($res=mysqli_fetch_row($r)){
			array_push($result,array(
		 		"postid"=>$res[0],
		 		"topic"=>$res[1],
		 		"shortinfo"=>$res[2],
		 		"subtime"=>$res[3],
		 		"author"=>$res[4],
		 	));
	 	}
		echo json_encode(array("details"=>$result));
	}

	else if($type=="branch"){
		$query="SELECT `postid`,`topic`,`shortinfo`,`subtime`,`author` FROM `posts` WHERE branchid=$id order by postid desc";
		$r=mysqli_query($connection,$query);
		$result = array();

	 	while($res=mysqli_fetch_row($r)){
			array_push($result,array(
		 		"postid"=>$res[0],
		 		"topic"=>$res[1],
		 		"shortinfo"=>$res[2],
		 		"subtime"=>$res[3],
		 		"author"=>$res[4],
		 	));
	 	}
		echo json_encode(array("details"=>$result));
	}

?>