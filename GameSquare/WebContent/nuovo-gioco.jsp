<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="java.util.*"
    import="gameManager.*"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Aggiunta di un nuovo gioco</title>



<!-- JQUERY 3.4.1 -->
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>


</head>
<body>
<header>
			<%@ include file="fragment/header.jsp" %>
		</header>
<h1>Nuovo gioco</h1>

<form>
			<div class="container">

				<div class="form-top-grid">
					<div>
						<span>Titolo del Gioco:<label>*</label></span> <input
							name="game_title" type="text" id="game_title"
							placeholder="Inserire un titolo..." required>
					</div>
					<div>
						<span>Publisher:<label>*</label></span> <input
							name="publisher" type="text" id="publisher"
							placeholder="Inserire un publisher..." required>
					</div>
						<div>
						<label for="genre">Genere:</label>
							<select id="game_genre" name="game_genre">
 									<option value="Altro">Altro</option>
 									<option value="Applicazione">Applicazione</option>
  									<option value="Azione">Azione</option>
 									<option value="Avventura">Avventura</option>
  									<option value="Arcade">Arcade</option>
  									<option value="Action-Adventure">Action-Adventure</option>
  									<option value="Action RPG">Action RPG</option>
  									<option value="Educativo">Educativo</option>
  									<option value="Gestionale">Gestionale</option>
  									<option value="JRPG">JRPG</option>
  									<option value="Musicale">Musicale</option>
  									<option value="Party">Party</option>
  									<option value="Platform">Platform</option>
  									<option value="Picchiaduro">Picchiaduro</option>
  									<option value="Puzzle">Puzzle</option>
  									<option value="RPG">RPG</option>
  									<option value="Roguelike">Roguelike</option>
  									<option value="Sparatutto">Sparatutto</option>
  									<option value="Sport">Sport</option>
  									<option value="Stealth">Stealth</option>
  									<option value="Strategico">Strategico</option>
							</select>
						</div>
							<div>
						  		<label for="quantity">Punteggio:</label>
 							 	<input type="number" id="score" name="score" min="50" max="200" value="50" step="10">
 							 </div>
						<label for="year">Anno:</label>
							<select id="game_year" name="game_year">
								<% for (int anno = 2021; anno>=1958; anno--){ %>
 									<option value="<%=anno%>"><%=anno%></option>
 									<%} %>
							</select>
						</div>
					<div>
						<span>Descrizione</span> <textarea name="game_desc"
							id="game_desc" placeholder="Inserire una descrizione" ></textarea>
					</div>
					<div class="clear"></div>
				</div>
				<div class="button2">
					<input type="button" id="buttonaggiungi" class="setButton"
						value="Aggiungi gioco">
				</div>

		
</form>

</body>

<script>

$("#buttonaggiungi").on('click', function validate(){	
	var game_title  = $('#game_title').val();
	var publisher  = $('#publisher').val();
	var score = $('#score').val();
	var game_genre = $('#game_genre').val();
	var game_year = $('#game_year').val();
	var game_desc = $('#game_desc').val();
	
	//alert('pulsante premuto' + '1:'+game_title +' 2:'+ publisher +' 3:'+ game_genre+' 4:'+ game_year +' 5:'+ game_desc + ' 6: '+ score);
	
	if(game_title === "")
	{
		Swal.fire({ 
			title: 'Inserire il titolo del gioco',
			type: 'warning',
			  confirmButtonColor: '#3085d6',
			  confirmButtonText: 'OK',
			width: '400px',
			})
		setTimeout(function(){location.href="nuovo-gioco.jsp"} , 135000);
		return false;
	} else if(publisher === "")
	{
		Swal.fire({ 
			title: 'Inserire un publisher',
			type: 'warning',
			  confirmButtonColor: '#3085d6',
			  confirmButtonText: 'OK',
			width: '400px',
			})
		setTimeout(function(){location.href="nuovo-gioco.jsp"} , 135000);
		return false;
	}
	else 
	{
		$.ajax({ 
		type: "POST",
		url: "AddGame",
		data: {"game_title": game_title, "publisher": publisher,"score":score, "game_genre":game_genre, "game_year":game_year, "game_desc": game_desc},
		success: function(results){
			Swal.fire({ //SECONDO POPUP
				title: 'Gioco aggiunto!',
				timer: 40000,
				type: 'success',
				showCancelButton: false,
				showConfirmButton: false,
				width: '400px',
				})
			setTimeout(function(){location.href="Game?action=findall"} , 2000);
			}    
		})
	}
	
	
	
});



</script>
</html>