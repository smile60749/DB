<html>
<head>
<meta charset="UTF-8">
<title>查詢帳號</title>
</head>
<body>
<?php
require_once("server.php");
$sql = "create table fb(
		pid int auto_increment primary key,
		cid varchar(20),
		title varchar(50),
		ptime datetime,
		mid varchar(20),
		uid varchar(20)
		)";
$sql2=mysql_query($sql);
if($sql2){
	echo "create table success"."<br>";
	}
else{
echo "create table fail"."<br>";
}
?>
</body>
</html>