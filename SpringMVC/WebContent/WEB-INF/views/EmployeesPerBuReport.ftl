<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employees per BU</title>
</head>
<body>

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
	<#list Employees as Employee>
	<tr>
		<td>${Employee.getName}</td>
		<td>${Employee.getAddress}</td>
		<td>${Employee.getNi_number}</td>
		<td>${Employee.getIban_number}</td>
		<td>${Emplpyee.getStarting_salary}</td>
	</tr>
</#list>	
</tbody>
</table>
</body>

</body>
</html>