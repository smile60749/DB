<html>
<head>
<meta charset="UTF-8">
<title>刪除帳號</title>
<body>
<?php
require_once("server.php");
$del=$_POST['del'];
foreach($del as $v){
	$sql = "delete from vieww where mid=".$v;
	$sql2 = mysql_query($sql);
	if($sql2){
		echo "delete success<br>";
	}
}
?>
</body>
</html>