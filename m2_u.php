<html>
<head>
<meta charset="UTF-8">

</head>
<body background="pic/bg5.jpg">

<form action="m2_u2.php" method="post">
<?php
require_once("server.php");
$sql = "select * from vieww";
$sql2 = mysql_query($sql);
echo "<table width='90%'>";
while($list3 = mysql_fetch_array($sql2)){
	echo "<tr>";
	echo "<td width='10%'>";
	
	echo "<td width='10%'>";
	echo "<input type=hidden name=mid[] value=".$list3['mid'].">";
	echo "<td width='10%'>";
	echo "景點名稱：<input type=text name=name[] value=".$list3['name'].">";
	echo "<td width='10%'>";
	echo "景點地址：  <input type=text name=addd[] value=".$list3['addd'].">";
	echo "<td width='10%'>";
	echo "景點類型：  <input type=text name=type[] value=".$list3['type'].">";
	echo "<td width='*'>";
	echo "目的地縣市：<input type=text name=arrive_city[] value=".$list3['arrive_city'].">";
}
echo "<tr>";
echo "<td colspan='5' align='center'>";
echo "<input type='submit' value='修改'>";
?>
</form>
</body>
</html>