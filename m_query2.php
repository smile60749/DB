<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<body bgcolor="bisque" text="brown">
<?php
$link = @mysql_connect("localhost","root","csie102");
mysql_query('set names utf8');
$db = mysql_select_db("DB");
if($link){
	
		if($db){
			
			$arrive_city=$_POST['arrive_city'];
			
			$sql2 = "select * from vieww where arrive_city='".$arrive_city."'";
			$sql3 = mysql_query($sql2);
			$i =1;
			while($list3 = mysql_fetch_array($sql3)){
			echo "景點名稱：&nbsp;&nbsp;&nbsp;&nbsp;".$list3['name']."<br>";
			echo "景點地址：&nbsp;&nbsp;&nbsp;&nbsp;".$list3['addd']."<br>";
			echo "景點類型：&nbsp;&nbsp;&nbsp;&nbsp;".$list3['type']."<br>";
			echo "目的地縣市：".$list3['arrive_city']."<br>";
			$i++;
			echo "<img src='pic/wolk.gif'><br><br>";
			}
		}
		else{
			echo "連接資料庫失敗";
}
}
else{
echo "連接主機失敗";
}

?>
</body>
</html>