<?php
session_start();
if(!$_SESSION['member_name']){
	echo "
		<script>
		window.location.href='login.php';
		</script>
	";
}
?>

<!DOCTYPE html>
<head>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="./styles/style.css"/>
</head>
<body>
	<nav class="navbar navbar-default">
  			<div class="container-fluid">
   				 <div class="navbar-header">
    				  <a class="navbar-brand" href="#">Library</a>
    			 </div>
				    <ul class="nav navbar-nav">
				      <li class="active"><a href="index.php">Home</a></li>
				      
				      <li><a href="#">Reserve Book</a></li>
				      
				       
				    </ul>	
    <ul class="nav navbar-nav navbar-right">
      <li>
						<form action="index.php" method="post" style="margin-top:10px">
					    	<input type="text" placeholder="Enter Search Query"/>
					    	<input type="submit"/>
						</form>
				       </li>
      <li><a href="logout.php"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
    </ul>
  </div>
</nav>

<!--banner-->
<div class="row">
	<div class="col-md-12">
<img class="banner img-responsive" src="http://www.bu.edu/library/files/2011/07/banner_bookshelf.jpg"/>
	</div>
</div>
<!---->
<div class="row">
	<div class="col-md-12">
		<h1>Please enter details to reserve book :</h1>
	</div>
</div>
<div class="container">
<div class="row">
	<div class="col-md-12">
		<form action="reserve.php" method="post" >
			<div class="form-group">
			<label>Enter Your Name:</label>
			<input class="form-control" name="name" type="text"/>
			</div>
			<div class="form-group">
			
			<?php
				$con = mysqli_connect('localhost','root','password','library');
				$id = $_GET['id'];	
				$result = mysqli_query($con,"select book_name from books_csv where id='$id'");
				
					foreach ($result as $value) {
						$book = $value['book_name'];
							echo "
							<label>Enter Book Name :</label>
							<input class='form-control' name='book' type='text' value='$book'/>
							</div>
							";
						}
					
						if(!$id){
							echo "
								<label>Enter Book Name :</label>
									<input class='form-control' name='book' type='text' value=''/>
								</div>

							";
						}
						
			
		?>
			</div>
			<div class="form-group">
			<label>Enter Date :</label>
			<input id="date" class="form-control" name="date" type="date" />
			</div>
			<input id="submit" type="submit" class="btn btn-danger" />
		</form>
	</div>
</div>
</div>
<div class="footer">
	<div class="row">
		<div class="col-md-12">
			<h2 class="footer-head">&copy; Grampa, Mallari, Tuano | Library Mangement System</h2>
		</div>
	</div>
</div>
<script>
function checkDate(event){
let button = document.querySelector('#date').value;
	let date = new Date();
	if(new Date(button).getTime() <= date.getTime()){
		console.log("event"+ event);
		alert('Please enter a valid date');
		event.preventDefault();
		return false;
	}
	return true;
}
</script>
</body>
<?php
	if(isset($_POST['name']) && isset($_POST['book']) && isset($_POST['date'])){
		$con = mysqli_connect('localhost','root','password','library');
			 	$user_book = $_POST['book'];
			 	$results = mysqli_query($con,"select * from books_csv where book_name='$user_book'");
			 	$rows = mysqli_num_rows($results);
			 	if($rows == 0){
			 		echo "
						<script>
							alert('Book not available!');
						</script>
			 		";
			 		die();	
			 	}
			 	$query = "select * from reserve where book_name = '$user_book'";
			 	$q = mysqli_query($con,$query);
			 	$r = mysqli_num_rows($q);
			 	if($r>0){
			 		echo "
						<script>
							alert('Book already reserved!');
						</script>
			 		";
			 		die();
			 	}
			    $user = $_POST['name'];
				$book_name = $_POST['book'];
				$date = $_POST['date'];
				$result = mysqli_query($con,"insert into reserve(person_name,book_name,date) values('$user','$book_name','$date') ");
				if($result == true){
					echo "<script> 
					alert('Book has been reserved!')
					</script>";
				}
				else{
					echo "<script> 
					alert('Something Went Wrong!')
					</script>";
				}
	}
	else{
		echo "";
	}

?>
</html>