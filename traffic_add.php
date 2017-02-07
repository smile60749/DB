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
			
			$arrive_city = $_POST['arrive_city'];
			$departure_city = $_POST['departure_city'];
			$traffic_tool = $_POST['traffic_tool'];
			$cost=$_POST['cost'];
			$time=$_POST['time'];
			//$uploaddir="./upload/";
			//$city=foreach ($arrive_city as $Value);
			
			$sql = "insert into move(departure_city, arrive_city, traffic_tool, cost , time) values('".$departure_city."','".$arrive_city."','".$traffic_tool."','".$cost."','".$time."')";
			mysql_query($sql);
			$sql2 = "select * from move where arrive_city ='".$arrive_city."' && departure_city ='".$departure_city."' 
			&& cost='".$cost."' && time='".$time."'";
			$sql3 = mysql_query($sql2);
			$i =1;
			while($list3 = mysql_fetch_array($sql3)){
			echo "出發縣市：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;".$list3['departure_city']."<br>";
			echo "目的地縣市：&nbsp;&nbsp;&nbsp;&nbsp;".$list3['arrive_city']."<br>";
			echo "交通工具：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;".$list3['traffic_tool']."<br>";
			echo "交通工具費用：&nbsp;".$list3['cost']."<br>";
			echo "花費時間：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;".$list3['time']."<br>";
			
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