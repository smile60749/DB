<html>
<head>
<meta charset="UTF-8">
<title>查詢帳號</title>
</head>
<body bgcolor="bisque" text="brown">
<?php
require_once("server.php");
$sql = "select * from vieww";
$sql2 = mysql_query($sql);
$i =1;
while($list3 = mysql_fetch_array($sql2)){
echo "景點名稱：&nbsp;&nbsp;&nbsp;&nbsp;".$list3['name']."<br>";
echo "景點地址：&nbsp;&nbsp;&nbsp;&nbsp;".$list3['addd']."<br>";
echo "景點類型：&nbsp;&nbsp;&nbsp;&nbsp;".$list3['type']."<br>";
echo "目的地縣市：".$list3['arrive_city']."<br>";
$i++;
echo "<img src='pic/wolk.gif'><br><br>";
}
?>
</form>
</body>
</html>