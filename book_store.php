<?php
session_start();
if(!$_SESSION['user']){
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
  <link rel="stylesheet" href="../styles/style.css"/>
</head>
<body>

<style>
        table {
  width: 100%;
  border-collapse: collapse;
  margin-left: 50px;
}

th, td {
  padding: 8px;
  text-align: center;
  border-bottom: 2px solid #000;
  border-left: 1px solid #000;
  border-right: 1px solid #000;
}

th {
  background-color: #f2f2f2;
}
		
    </style>

		<nav class="navbar navbar-default">
  			<div class="container-fluid">
   				 <div class="navbar-header">
    				  <a class="navbar-brand" href="#">Library</a>
    			 </div>
				    <ul class="nav navbar-nav">
				      <li class="active"><a href="home.php">Home</a></li>
				      <li><a href="add_book.php">Add Book</a></li>
				      <li><a href="delete_book.php">Delete Book</a></li>
				      <li><a href="update_book.php">Update Book</a></li>
				      <li><a href="add_member.php">Add Member</a></li>
				      <li><a href="delete_member.php">Delete Member</a></li>
				      <li><a href="update_member.php">Update Member</a></li>
				      <li><a href="book_store.php">Book Details</a></li>
				      <li><a href="members.php">Member Details</a></li>    
				    </ul>	
    <ul class="nav navbar-nav navbar-right">
      <li><a href="logout.php"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
    </ul>
  </div>
</nav>
<div class="row">
	<div class="col-md-12">
<img class="banner img-responsive" src="logo.jpg"/>
	</div>
</div>
<div class="row">
	<div class="col-md-12">
		<h1 style="margin-left: 40px">Browse Books</h1>
	</div>
</div>
<div class="row">
	<?php
		$con = mysqli_connect('localhost','root','password','library');
		$query = "select * from books_csv";
		$result = mysqli_query($con,$query);
		echo "
		
		<table>
		<thead>
			<tr>
				<th>Book Id</th>
				<th>Book Name</th>
				<th>Book ISBN</th>
				<th>Book Author</th>
			</tr>
		</thead>
		</table>

		";
		foreach ($result as $value) {
			$id = $value['id'];
			$name = $value['book_name'];
			$isbn = $value['book_isbn'];
			$cat = $value['author'];
			echo "
				
			<table>
					<tbody>
						<tr>
							<td><p style='margin-left:30% 'class='bookname'>'$id'</p></td>
							<td><p style=''class='bookname'>'$name'</p></td>
							<td><p style=' 'class='bookname'>'$isbn'</p></td>
							<td><p style=' 'class='bookname'>'$cat'</p></td>
						</tr>
					</tbody>
    			</table>
					
					
					
				
			";
		}
	?>
</div>

<div class="footer">
	<div class="row">
		<div class="col-md-12">
		<h2 class="footer-head">&copy; Grampa, Mallari, Tuano | Library Mangement System</h2>
		</div>
	</div>
</div>