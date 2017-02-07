<html>
<head>
<meta charset="UTF-8">

</head>
<body>
<?php
require_once("server.php");
$mid = $_POST['mid'];
$name = $_POST['name'];
$addd = $_POST['addd'];
$type = $_POST['type'];
$arrive_city = $_POST['arrive_city'];
echo "mid=".count($mid)."name=".count($name)."addd=".count($addd)."type=".count($type)."<br>";
foreach($mid as $k => $v){
	$sql = "update vieww set name='".$name[$k]."',addd='".$addd[$k]."',type='".$type[$k]."',arrive_city='".$arrive_city[$k]."' where mid=".$mid[$k];
	$sql2 = mysql_query($sql);
	if($sql2){
		echo "update success"."<br>";
	}
	else{
		echo "update fail"."<br>";
	}
}
?>
</body>
</html>