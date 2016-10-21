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
	<th>Name</th>
	<th>Address</th>
	<th>National Insurance Number</th>
	<th>Bank Account Number</th>
	<th>Starting Salary</th>
</tr>
</thead>
<tbody>


<#list employees as employee>
			<tr>
				<td>${employee.name}</td>
				<td>${employee.address}</td>
				<td>${employee.ni_number}</td>
				<td>${employee.iban_number}</td>
				<td>${employee.starting_salary}</td>
			</tr>
		</#list>
</tbody>
</table>

</body>
</html>