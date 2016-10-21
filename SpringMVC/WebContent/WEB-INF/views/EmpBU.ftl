<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employees per BU</title>

<!-- Compiled and minified CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/css/materialize.min.css">

  <!-- Compiled and minified JavaScript -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/js/materialize.min.js"></script>
          

</head>
<body>

<h1>Employees</h1>
<table>
<thead>
<tr>
	<th>Number in Project</th>
	<th>Project Name</th>
</tr>
</thead>
<tbody>

<ul>
<#list rows as row>
			<tr>
				<li> ${row[0]}</li>
				<li> ${row[1]}</li>
			</tr>
		</#list>
		</ul>
</tbody>
</table>
</body>
</html>