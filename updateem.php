<?php
include('configall.php');
$empid=$_POST["empid"];
$name=$_POST["name"];
$dob=$_POST["dob"];
$gender=$_POST["gender"];
$sdate=$_POST["sdate"];
$email=$_POST["email"];
$phone=$_POST["phone"];
$loan=$_POST["loan"];
$pfund=$_POST["pfund"];
$jobtitle=$_POST["jobtitle"];
$address=$_POST["address"];
$depid=$_POST["depid"];
$manid=$_POST["manid"];
$bacc=$_POST["bacc"];
if($manid==0)
{
$sql="UPDATE `employee` SET `Name` = '$name', `Address` = '$address', `Phone_no` = '$phone', `Email` = '$email', `Start_date` = '$sdate', `dob` = '$dob', `gender` = '$gender', `loan` = '$loan', `p_fund` = '$pfund', `jobtitle` = '$jobtitle', `Depart_id` = '$depid', `managesDepart_id` = null , `bank_accno` = '$bacc' WHERE `employee`.`Employee_id` = $empid";
}
else
{
$sql="UPDATE `employee` SET `Name` = '$name', `Address` = '$address', `Phone_no` = '$phone', `Email` = '$email', `Start_date` = '$sdate', `dob` = '$dob', `gender` = '$gender', `loan` = '$loan', `p_fund` = '$pfund', `jobtitle` = '$jobtitle', `Depart_id` = '$depid', `managesDepart_id` = '$manid', `bank_accno` = '$bacc' WHERE `employee`.`Employee_id` = $empid";
}
$ff=mysqli_query($connection,$sql);
if($ff)
{
echo "successfully updated info into database";
header('location: employee.php');
}
else{
echo "somthing is wrong";
}
?>
emp-up-deletephp.php-(php file to delete employee data)
<?php include('configall.php')
$sql="DELETE FROM `employee` WHERE Employee_id='$empid';";
if($connection->query($sql)===TRUE)
{
echo "successfully inserted into database";
}
else{
echo "somthing is wrong";
}
?>