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
			
			$name = $_POST['name'];
			$add = $_POST['add'];
			$tel = $_POST['tel'];
			$star =$_POST['star'];
			$price=$_POST['price'];	
			$arrive_city=$_POST['arrive_city'];
			
			
			$sql = "insert into hotel(name, add, tel, star ,price , arrive_city) values('".$name."','".$add."','".$tel."','".$price."','".$arrive_city."','".$star."')";
			mysql_query($sql);
			$sql2 = "select * from move where arrive_city='".$arrive_city."'";
			$sql3 = mysql_query($sql2);
			$i =1;
			while($list3 = mysql_fetch_array($sql3)){
			echo "旅店名稱：".$list3['name']."<br>";
			echo "旅店地址：".$list3['add']."<br>";
			echo "電話：".$list3['tel']."<br>";
			echo "星數：".$list3['star']."<br>";
			echo "價錢：".$list3['price']."<br>";
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