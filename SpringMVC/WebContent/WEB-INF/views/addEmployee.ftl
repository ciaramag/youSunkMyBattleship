<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Employee</title>


 <!-- Compiled and minified CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/css/materialize.min.css">

  <!-- Compiled and minified JavaScript -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/js/materialize.min.js"></script>
          

</head>
<body>
	<h1>Add Employee</h1>
	<div>
	<form  class="col s12" method="post" name="employee" action="addEmployee.mvc">
		<div class="row">
        <div class="input-field col s6">
          	<input placeholder="First Name" name="firstName" type="text" class="validate">
        </div>
        <div class="input-field col s6">
          	<input placeholder="Last Name" name="lastName" type="text" class="validate">
        </div>
      	</div>
      	<div class="row">
        <div class="input-field col s12">
          	<input placeholder="address" name="address" type="text" class="validate">
        </div>
        </div>
        <div class="row">
        <div class="input-field col s6">
          	<input placeholder="National Insurance Number" name="nin" type="text" class="validate">
      	</div>
        <div class="input-field col s6">
          	<input placeholder="salary" name="salary" type="text" class="validate">
        </div>
      	</div>
		<input class="waves-effect waves-light btn" type="submit" text="submit" />
	</form>
	</div>
</body>
</html>