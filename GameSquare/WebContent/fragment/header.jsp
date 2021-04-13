<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" type="text/css" href="./css/header.css">
	</head>

	<body>
		<div class="header-grid">
			<logo class="logo-item">
				<a href="/GameSquare/">
					<img src="./img/Website/logo.png" class="logo-image">
				</a>
			</logo>
			<div class="wrap-item">
				<form action="" method="get" id="searchbarForm">
					<div class="searchbar-item">
						<input type="hidden" name="page" value='1'>
						<input type="text" class="searchTerm" placeholder="Cerca gioco..." name="q">
						<button type="submit" class="searchButton">
		     	 			<i class="fa fa-search"></i>
		     	 		</button>
		     	 	</div>
				</form>
			</div>
		</div>
	</body>
</html>