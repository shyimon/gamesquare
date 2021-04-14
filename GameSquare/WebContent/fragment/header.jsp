<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="userManager.*"
    import="util.*"
    import="java.util.*"%>
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
			
			<!-- UTENTE -->
				
			<div class="nav-items-left">
				<a class="nav-button" href="/GameSquare/">Home</a>
				<a class="nav-button" href="/GameSquare/Catalogo">Catalogo</a>
				<a class="nav-button" href="/GameSquare/Aiuto">Aiuto</a>
			</div>
			
			<div class="nav-items-right">
						<% 
							Utente utenteLoggato;
							synchronized(session) {
								utenteLoggato = (Utente) request.getSession().getAttribute("utenteLoggato"); 
							}
							if(utenteLoggato!=null) {
								if((utenteLoggato.getTipo()).equals("user")){ %>
									<a class="service-button" href="area-utente.jsp"><span class="glyphicon glyphicon-user men"></span><%=utenteLoggato.getUsername()%> </a>
						<%} else{ %>
									<a class="service-button" href="area-utente.jsp" style = "font-size:15px"><span class="glyphicon glyphicon-user men"></span>Admin:<%=" "+utenteLoggato.getUsername()%></a>											
						<%} %>
						<%} else {%>
									<a class="service-button" href="login-page.jsp"><span class="glyphicon glyphicon-user men"></span>Area Utente</a>
						<%} %>
						
						<a class="service-button" href="/GameSquare/Catalogo">Aggiungi Gioco</a>
				
						<%
							if(utenteLoggato!=null) {
						%>
							<a class="service-button" href="/GameSquare/Logout">LOGOUT</a>
						<%
						 	  }
							  else {
						%>
							
							<a class="service-button" href="login-page.jsp">LOGIN</a>
						<%
							}
						%>
						
			</div>
			
		</div>
		
	</body>

</html>