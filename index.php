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
  <link rel="stylesheet" href="./style.css"/>
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
				      <li class="active"><a href="index.php">Home</a></li>
				      <li><a href="issue.php">Issue Book</a></li>
				      <li><a href="reserve.php">Reserve Book</a></li>
				     
				      
				    </ul>	
    <ul class="nav navbar-nav navbar-right">
     <li>
						<form action="search.php" method="GET" style="margin-top:10px">
					    	<input type="text" name="search" placeholder="Enter Search Query"/>
					    	<input type="submit" name="submit"/>
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
		<h1>Please select a book</h1>
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
			$book_name = $value['book_name'];
			$book_isbn = $value['book_isbn'];
			$category = $value['author'];
			echo "
			<table>
			<tbody>
				<tr>
					<td><p style='margin-left:30% 'class='bookname'>'$id'</p></td>
					<td><p style=''class='bookname'>'$book_name'</p></td>
					<td><p style=' 'class='bookname'>'$book_isbn'</p></td>
					<td><p style=' 'class='bookname'>'$category'</p></td>
					<td><button class='btn btn-primary'><a href='issue.php?id=$id'> Issue Book </a></button></td>
					<td><button class='btn btn-primary'><a href='reserve.php?id=$id'> Reserve Book</a></button></td>
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
</body>
</html>