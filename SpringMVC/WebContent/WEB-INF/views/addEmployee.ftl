<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Employee</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

 <!-- Compiled and minified CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/css/materialize.min.css">

  <!-- Compiled and minified JavaScript -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/js/materialize.min.js"></script>
  

  <script>
      function salesEmployee(box){
        //alert(document.getElementById('test5').checked());
        if(box.checked) {
          document.getElementById('hide').style.display = 'block';

        } else {
          document.getElementById('hide').style.display = 'none';
        }
      }
  </script>

</head>
<body>
	<h1>Add Employee</h1>
	<div>
	<form  class="col s12" method="post" name="employee" action="submitForm.mvc">
		<div class="row">
        <div class="input-field col s12">
        	<label for="name">Name</label>
          	<input placeholder="Name" name="name" type="text" class="validate">
        </div>
    </div>
      	<div class="row">
        <div class="input-field col s6">
        	<label for="Address">Address</label>
          	<input placeholder="Address" name="address" type="text" class="validate">
        </div>
        <div class="input-field col s6">
        	<label for="Iban_number">IBAN Number</label>
          	<input placeholder="Iban Number" name="Iban_number" type="text" class="validate">
        </div>
        </div>
        <div class="row">
        <div class="input-field col s6">
        	<label for="Ni_number">National Insurance Number</label>
          	<input placeholder="National Insurance Number" name="Ni_number" type="text" class="validate">
      	</div>
        <div class="input-field col s6">
        	<label for="starting_salary">Salary</label>
          	<input placeholder="Salary" name="starting_salary" type="text" class="validate">
        </div>
      	</div>
        <div class="row">
          <div class="col 6">
            <input onChange="salesEmployee(this)" type="checkbox" id="test5" />
            <label for="test5">Sales Employee</label>
        </div>
      </div>
      <div class="row" style="display:none;" id="hide">
          <div class="input-field col s6">
          		<label for="commission_rate">Commission Rate</label>
            	<input placeholder="Commission Rate" value="0" name="commission_rate" type="text" class="validate">
          </div>
          <div class="input-field col s6">
          		<label for="total_sales">Total Sales</label>
            	<input placeholder="Total Sales" value="0" name="total_sales" type="text" class="validate">
          </div>
        </div>
      <div class="row">
        <div class="col 6">
          <input class="waves-effect waves-light btn" type="submit" text="submit" />
        </div>
      </div>
    </div>
    </div>
  </form>
	</div>
</body>
</html>
