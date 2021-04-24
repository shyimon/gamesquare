<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="java.util.*"
    import="gameManager.*"
    import="threadManager.*"%>
    
  <%	
	Gioco bean = (Gioco) request.getAttribute("game");
	
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>GameSquare - <%=bean.getNome()%></title>
	 	<link rel="stylesheet" type="text/css" href="css/pagina-gioco.css">
</head>

<body style="margin:0">
	<header class="header">
			<%@ include file="./fragment/header.jsp" %>
	</header>

<!-- sezione con le info del gioco, immagine ecc -->
	<div class="gameinfo-section">
		<div class="game-info">
			<div class="gamesec1">
				<h3 id="game-name"><%=bean.getNome()%></h3>
				<img id="imgXD" src="<%=bean.getImgpath()%>/img1.png" alt="Img" style="width:100%; max-width:280px; height: 280px;" class="imgItem2">
				<img class="modal-content" id="img01" style="width: 350px;">
				
					<p id="stiletitle">Punteggio: <h4 id="score"><%=bean.getPunteggio()%></h4></p>
					<p id="stiletitle">Media dei voti: <%=bean.getMediaVoti()%></p>
			</div>
			
			<div class="gamesec2">
				<h4 id="titlePPS">DESCRIZIONE</h4>
				<p id="descP"><%=bean.getDescrizione()%></p>
				<p id="stiletitle">Publisher: <%=bean.getPublisher()%></p>
				<p id="stiletitle">Anno: <%=bean.getAnno()%></p>
				<p id="stiletitle">Genere: <%=bean.getGenere()%></p>
				
				
			<br>
			<div class="VoteArea">
				<% if(utenteLoggato!=null){ 
				VotoDAO voteModel = new VotoDAO();
				ArrayList <Voto> voti = voteModel.getVote("Gioco", " "+bean.getIdGioco(), "utente", utenteLoggato.getUsername()); 
				if(voti.size()!=0){ 
						Voto voto = voti.get(0);%>
					<h4>Hai votato questo gioco con <%=voto.getValutazione()%> <input type="button" id="deleteVote" class="setButton" value="Cancella voto"></h4>
				<% }%>
				
				<input type="hidden" id="usrValue" value="<%=utenteLoggato.getUsername()%>">
				<% } %>
				<form>
				<input type="hidden" id="gameIdValue" value="<%=bean.getIdGioco()%>">
					<label for="vote">Il tuo voto:</label>
						<select id="vote" name="vote">
							<% for (int i = 1; i<=10; i++){ %>
 								<option value="<%=i%>"><%=i%></option>
 							<%} %>
						</select>
						<% if(utenteLoggato!=null){ %>
					<input type="button" id="voteButton" class="setButton" value="Valuta">
					<% }else{ %>
					<a href="login-page.jsp"> Valuta </a>
					<% } %>
				</form>
			</div>
			
			<br>
			
			<div class="ListArea">

				<form>
					<label for="category">Scegli una categoria:</label>
						<select id="category" name="category">
							<option value="Acquistato">Acquistato</option>
							<option value="In corso">In corso</option>
							<option value="Completato">Completato</option>
							<option value="Platinato">Platinato</option>
							<% if(utenteLoggato!=null && utenteLoggato.getTipo().equals("dev")){ %>
 								<option value="Sviluppato">Sviluppato</option>
 								<% } %>
						</select>
						<% if(utenteLoggato!=null){ %>
					<input type="button" id="addButton" class="setButton" value="Aggiungi alla tua lista">
					<% }else{ %>
					<a href="login-page.jsp"> Aggiungi alla tua lista </a>
					<% } %>
				</form>
			</div>
		   
		   </div>
			
		</div>
			
			
			
		<div class="ThreadArea">
			<div class="thread">
			<h2 id="titolo">Discussioni pi� recenti</h2>
			<div class="discussioni">
			<%
				ThreadDAO model_thread=new ThreadDAO();
				ArrayList<GameThread> array = model_thread.viewThread("Idgioco", ""+bean.getIdGioco());		
				if(array.size()!=0)
				{										
					Iterator<?> it2 = array.iterator();
					while (it2.hasNext()) 
					{
						GameThread tbean = (GameThread) it2.next();	
						if (tbean.getTipoThread().equals("Spoiler")){%>
						<a class="discussione" href="Thread?action=discussion&threadid=<%=tbean.getIdThread()%>"> <b>La discussione � marcata come SPOILER</b>: clicca per visualizzarla! - scritta da <%=tbean.getUsernameUtente()%> </a>
						<%}
						else{
						%>
							<a class="discussione" href="Thread?action=discussion&threadid=<%=tbean.getIdThread()%>"> (<%=tbean.getTipoThread()%>) <b><%=tbean.getTitolo()%></b> - scritta da <%=tbean.getUsernameUtente()%> </a>
						
						<% 	}
						}
							} else { %>
								<h4>Nessuna Discussione.
								<% if(utenteLoggato != null)
									{%>					
										<a href="Thread?action=newdiscussion&gameid=<%=bean.getIdGioco()%>">Sii il primo a crearla!</a></
									
								<%	}
									else
									{%>
										<a href="login-page.jsp">Sii il primo a crearla!</a></
									<%}%></h4>
								<% } %>	
						</div>	
				</div>
			<div class="crea-discussione">
				<% if(utenteLoggato != null)
				{%>					
					<a href="Thread?action=newdiscussion&gameid=<%=bean.getIdGioco()%>">Crea una nuova discussione su <%=bean.getNome()%></a></		
				<%}
					else
				{%>
					<a href="login-page.jsp">Crea una nuova discussione su <%=bean.getNome()%></a>
				<%}%>
		</div>
</div>
</div>
</body>

<script>

//dichirazione di variabili utili per gli script importati
document.getElementById("vote").selectedIndex = -1;
var username  = $('#usrValue').val();
var game_id = $('#gameIdValue').val();
</script>

<script src="script/GestioneVoti.js"></script>
<script src="script/GestioneLista.js"></script>

</html>