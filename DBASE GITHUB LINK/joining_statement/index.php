<?php
ob_start();
session_start();
include 'conn.php';

$sql = "SELECT students.first_name,
       students.last_name,
       exams.exam_name,
       exams.date,
       grades.grade_value,
       courses.course_name
    FROM grades
    LEFT JOIN exams ON exams.exam_id = grades.exam_id
    LEFT JOIN courses ON courses.course_id = grades.course_id
    LEFT JOIN majors ON majors.major_id = grades.major_id
    LEFT JOIN students ON students.student_id = grades.student_id
 ";
$result = mysqli_query($conn, $sql);

?>

<!DOCTYPE html>
<html>
<head>
	<title>Join 3 Table Level 1</title>
	
	<link rel="stylesheet" type="text/css" href="css/datatables.min.css"/>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
    
    
</head>
<body>

<div class="container">
    <h3 align="center">1st Level Join Tables</h3>
    <div class="table-responsive">
       <table id="myTable" class="table table-dark table-bordered">
          <thead>
              <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Exam Name</th>
                <th>Date</th>
                <th>Grade Value</th> 
                <th>Course</th>
              </tr>
              
          </thead>
           <?php  
		
                while ($row = mysqli_fetch_array($result)) 
                {
                    echo '
                    <tr >
                        <td> '.$row["first_name"].' </td>
                        <td> '.$row["last_name"].' </td>
                        <td> '.$row["exam_name"].' </td>
                        <td> '.$row["date"].' </td>
                        <td> '.$row["grade_value"].' </td>
                        <td> '.$row["course_name"].' </td>

                    </tr>
                    ';
                }

		  ?>
       </table>
        
    </div>
    <button type="button" class="btn btn-primary">Click Me!</button>
    
    
</div>

	

<!--
		<a href="index2.php">Insert Data Here</a>&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="search_filter_print.php">Search Data Here</a>&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="update.php">Update Data Here</a>&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="index.php">Go to Home</a>&nbsp;&nbsp;&nbsp;&nbsp;
-->

</body>

<!-- <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script> -->
<!-- <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script> -->
<!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script> -->

<script src="js/jquery-3.6.3.min.js"></script>
<script src="js/dataTables.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>


<script>
    $(document).ready(function () {
    $('#myTable').DataTable({
        paging: true,
        ordering: true,
        info: true,
    });
});
</script>

</html>


