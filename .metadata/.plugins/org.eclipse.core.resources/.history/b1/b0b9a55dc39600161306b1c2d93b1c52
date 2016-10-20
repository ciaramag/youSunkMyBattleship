<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Freemarker student list</title>


 <!-- Compiled and minified CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/css/materialize.min.css">

  <!-- Compiled and minified JavaScript -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/js/materialize.min.js"></script>
          

</head>
<body>
	<h1>Students</h1>
	<table>
	<thead>
	<tr>
		<th>Name</th>
		<th>Gender</th>
		<th>University</th>
	</tr>
	</thead>
	<tbody>
		<#list studentList as s>
			<tr>
				<td>${s.firstName} ${s.lastName}</td>
				<td>${s.gender}</td>
				<td>${s.university}</td>
			</tr>
		</#list>
	</tbody>
	</table>
	
	<a href="addStudent.mvc">Add a student</a>
</body>
</html>