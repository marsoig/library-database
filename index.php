<meta charset="utf-8">

<h2>Выбираем злостного читателя!</h2>

<form action="index.php" method="post">

<p>За какой период выбирается читатель?<p>

<p>Начало периода: <input name="startdate" type="date"></p>

<p>Конец периода: <input name="enddate" type="date"></p>

<p><input type='submit' value='Отправить'></p>

</form>

<?php

if($_SERVER['REQUEST_METHOD'] == 'POST') {
    $startdate = $_POST['startdate'];
    $enddate = $_POST['enddate'];

$link = mysqli_connect("localhost", "root", "0000", "mydb");

$sql = 'select studentName from students
inner join readbooks on readbooks.studentId = students.studentId
where takenDate between "' . $startdate . '" and "' . $enddate .
'" group by studentName
order by count(studentName) desc
limit 1';

$result = mysqli_query($link, $sql);

echo 'За период с ' . $startdate . " по " . $enddate . "<br>";

while ($row = mysqli_fetch_array($result)) {
    print("самый злостный читатель - " . $row['studentName'] . "<br>");
}

$row_cnt = mysqli_num_rows($result);

if ($row_cnt==0) {
  echo 'никто не брал книг!';
}

}
?>
