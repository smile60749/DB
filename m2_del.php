<html>
<head>
<meta charset="UTF-8">
<title>刪除帳號</title>
<script language="javascript">
function checkAll(field) {
	var isChecked = document.getElementById("e").checked;
	for(i=0; i<field.length; i++)
		field[i].checked = isChecked;
}

</script>

</head>
<body background="pic/bg3.jpg" text="blue">
<form action="m2_del2.php" method="post" name="f1">
<h2><input id="e" type="checkbox" name="chk" onclick="checkAll(document.f1.list)">全部</h2>
<?php
require_once("server.php");
$sql = "select * from vieww";
$sql2 = mysql_query($sql);
echo "<table widt='90%'>";
while($list3 = mysql_fetch_array($sql2)){
echo "<tr>";
echo "<td width='10%'>";
echo "<h2><input id='list' type='checkbox' name='del[]' value='".$list3['mid']."'></h2>";
echo "<td width='20%'>";
echo "<h2>".$list3['mid']."</h2>";
echo "<td width='20%'>";
echo "<h2>".$list3['name']."</h2>";
echo "<td width='20%'>";
echo "<h2>".$list3['addd']."</h2>";
echo "<td width='20%'>";
echo "<h2>".$list3['type']."</h2>";
echo "<td width='20%'>";
echo "<h2>".$list3['arrive_city']."</h2>";
}
echo "<tr>";
echo "<td colspan='5' align='center'>";
echo "<input type'submit' value='' style='background-image:url(pic/bt13.jpg);width:100px;height:100px;'>";

?>
</form>
</body>
</html>