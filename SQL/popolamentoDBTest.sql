use gamesquare_test;
SET SQL_SAFE_UPDATES = 0;
delete from elemento_lista;
delete from voto;
delete from richiesta_gioco;
delete from thread;
delete from gioco;
delete from utente;

INSERT INTO utente values('AkiraHW', 'akirahoward01@gmail.com', 'password1', default, default);
INSERT INTO utente values('DarioTW', 'dariomocciatwitch@gmail.com', 'password2', default, default);
INSERT INTO utente values('DeadOrAlive', 'spinmeround@yahoo.it', 'password3', default, default);
INSERT INTO utente values('Zelda96', 'legendofzelda@gmail.com', 'hyrule01', default, default);
INSERT INTO utente values('Zagreus94', 'zagreus94@libero.it', 'olympus01', default, default);
INSERT INTO utente values('CloudStrife', 'finalfantasy@gmail.com', 'midgar01', default, default);
INSERT INTO utente values('ZackFair', 'unfairzack@libero.it', 'midgar02' , default, 'mod');
INSERT INTO utente values('AerithGain', 'againsborough@yahoo.it', 'midgar03', 390, 'mod');
INSERT INTO utente values('AmirRao', 'amiraoSG@gmail.com', 'password4', 580, 'dev');
INSERT INTO utente values('AonumaTLOZ', 'eijiaonuma@gmail.com', 'hyrule02', default, 'dev');
INSERT INTO utente values('CynthiaPT', 'pkplatinum@gmail.com', 'sinnoh01', default, 'manager');
INSERT INTO utente values('KomorBW', 'pkblackandwhite@gmail.com', 'unima01', default, 'manager');

INSERT INTO gioco values( 1, 'Final Fantasy VII', 'Final Fantasy VII è un videogioco di ruolo giapponese pubblicato nel 1997 da Square per PlayStation. Esso è stato il primo capitolo della serie realizzato in computer grafica 3D, con personaggi completamente renderizzati su sfondi pre-renderizzati, e il primo ad essere distribuito anche in Europa e Australia. Diretto da Yoshinori Kitase, scritto da Kazushige Nojima in collaborazione con Kitase e prodotto da Hironobu Sakaguchi. Le musiche sono state composte da Nobuo Uematsu, mentre il character designer di lunga data, Yoshitaka Amano, venne sostituito da Tetsuya Nomura, il quale aveva già ideato alcuni personaggi di Final Fantasy VI.', 'SquareSoft', '1997', 'JRPG', 'img/Games/finalfantasyvii', 100, 8.5);
INSERT INTO gioco values(NULL, 'The Legend of Zelda: Breath of the Wild', 'The Legend of Zelda: Breath of the Wild è un videogioco action-adventure del 2017, sviluppato da Nintendo EPD e pubblicato da Nintendo per Nintendo Switch e Wii U. Esso è stato artefice di un grande cambiamento per la saga decennale di Nintendo diventando acclamatissimo da critica e pubblico grazie alle sue meccaniche innovative. Diretto da Eiji Aunoma.', 'Nintendo', '2017', 'Action-Adventure', 'img/Games/zeldabotw', '100', 9);
INSERT INTO gioco values(NULL, 'Super Mario 64', 'Super Mario 64 è un videogioco platform del 1996, sviluppato da Nintendo EAD e pubblicato da Nintendo in esclusiva per Nintendo 64. Ottavo capitolo della serie principale di Mario, nonché il primo gioco tridimensionale della saga. Super Mario 64 è considerato da fans e critici uno dei migliori videogiochi di tutti i tempi, nonchè promotore del cambio generazionale dei videogiochi da 2D a 3D.', 'Nintendo', '1996', 'Platform', 'img/Games/supermario64', '100', 10);
INSERT INTO gioco values(NULL, 'Bloodborne', 'Bloodborne è un videogioco souls-like dark fantasy sviluppato dalla software house giapponese FromSoftware, con la collaborazione di SCE Japan Studio e pubblicato da Sony Computer Entertainment esclusivamente per PlayStation 4. Diretto da Hidetaka Miyazaki, già ideatore di Dark Souls. Precedentemente conosciuto come Project Beast, viene annunciato E3 2014 di Los Angeles. La sua pubblicazione è avvenuta a fine marzo 2015 in tutto il mondo.', 'Sony', '2015', 'Action RPG', 'img/Games/bloodborne', '120', default);
INSERT INTO gioco values(NULL, 'Metal Gear Solid 3: Snake Eater', 'Metal Gear Solid 3: Snake Eater è un videogioco stealth del 2004, sviluppato e pubblicato da Konami per PlayStation 2. È il terzo episodio della saga iniziata con Metal Gear Solid (1998), ma, per quanto riguarda la trama, è il primo in ordine cronologico. Il gioco ha una storia ed elementi di tipo fantascientifico, più precisamente di fantapolitica. Ha introdotto nella serie un sistema di mira più preciso, la possibilità di mimetizzazione e componenti survival.', 'Konami', '2004', 'Stealth', 'img/Games/metalgearsolid3', 100, default);
INSERT INTO gioco values(NULL, 'Street Fighter V', 'Street Fighter V è un videogioco di genere picchiaduro sviluppato e pubblicato da Capcom in collaborazione con Dimps, nonché quinto episodio della serie di Street Fighter. Come i precedenti episodi della saga, Street Fighter V consiste in una serie di incontri di lotta secondo una meccanica di gioco a scorrimento laterale. Il giocatore può scegliere il proprio lottatore in un insieme di 32 personaggi. Ulteriori combattenti e modalità di gioco verranno gradualmente resi disponibili attraverso aggiornamenti e contenuti scaricabili.', 'Capcom', '2016', 'Picchiaduro', 'img/Games/streetfighterv', 80, default);
INSERT INTO gioco values(NULL, 'Hades', 'Hades è un videogioco Roguelike con forti elementi di azione sviluppato e pubblicato da Supergiant Games, rilasciato per Microsoft Windows, macOS e Nintendo Switch. Il gioco è stato pubblicato il 17 settembre 2020. Prima del rilascio, nel settembre 2018, gli sviluppatori resero pubblica una versione early access. Il giocatore veste i panni di Zagreus mentre cerca di fuggire dagli inferi per raggiungere il monte Olimpo. Durante la sua avventura il protagonista incontra diversi personaggi della mitologia greca i quali lo aiutano nella sua impresa tramite dei doni.', 'Supergiant Games', '2020', 'Roguelike', 'img/Games/hades', 120, default);
INSERT INTO gioco values(NULL, 'DOOM', 'Sviluppato da id Software, lo studio che ha creato il genere sparatutto in prima persona e inventato il Deathmatch multigiocatore, DOOM fa il suo ritorno offrendo una esperienza di gioco moderna e brutalmente divertente.', 'Bethesda', '2016', 'Sparatutto', 'img/Games/doom2016', '100', default);
INSERT INTO gioco values(NULL, 'Super Mario Odyssey', 'Super Mario Odyssey è un videogioco platform del 2017, sviluppato da Nintendo EPD e pubblicato da Nintendo in esclusiva per Nintendo Switch. Diciottesimo capitolo della serie principale di Mario, nonché il settimo capitolo con grafica in 3D, il gioco è uscito in tutto il mondo il 27 ottobre 2017.', 'Nintendo', '2017', 'Platform', 'img/Games/marioodyssey', '100', default);
INSERT INTO gioco values(NULL, 'Crash Bandicoot N.Sane Trilogy', 'Crash Bandicoot: N. Sane Trilogy è un videogioco a piattaforme sviluppato da Vicarious Visions e pubblicato da Activision il 30 giugno 2017. Il videogioco contiene i remake dei primi tre capitoli della serie Crash Bandicoot, sviluppati originariamente dalla Naughty Dog per PlayStation: Crash Bandicoot, Crash Bandicoot 2: Cortex Strikes Back e Crash Bandicoot 3: Warped, con una nuova grafica con nuovi modelli in alta definizione e con un nuovo doppiaggio.', 'Activision', '2017', 'Platform', 'img/Games/crashtrilogy', '130', default);
INSERT INTO gioco values(NULL, 'Bastion', 'Bastion è un videogioco Action RPG prodotto dalla indipendente Supergiant Games. Il gioco è caratterizzato da una narrazione dinamica, ed è presentato come un gioco bidimensionale con inquadratura isometrica ed un disegno colorato a mano.', 'Supergiant Games', '2011', 'Action RPG', 'img/Games/bastion', '80', default);
INSERT INTO gioco values(NULL, 'Kero Blaster', 'Kero Blaster è un videogioco del 2014 sviluppato da Studio Pixel e pubblicato da Playism per Microsoft Windows e iOS. Ambientato nello stesso universo di Pink Hour e Pink Heaven, Kero Blaster è un ibrido tra uno sparatutto e un platform 2D. Il titolo è stato paragonato a Contra e Mega Man.', 'PLAYISM', '2014', 'Platform', 'img/Games/keroblaster', '80', default);
INSERT INTO gioco values(NULL, 'The Binding of Isaac: Repentance', 'The Binding of Isaac è un videogioco di genere roguelike realizzato da Edmund McMillen e Florian Himsl. Repentance, uscita nel 2021, è la più recente espansione del titolo.', 'Nicalis', '2021', 'Roguelike', 'img/Games/isaacrepentance', '120', default);
INSERT INTO gioco values(NULL, 'Transistor', 'Transistor è un videogioco Action RPG a tema fantascientifico sviluppato e pubblicato da Supergiant Games nel 2014. Unisce pianificazione strategica e azione adrenalinica, coniugando impeccabilmente agili meccaniche di gioco e atmosferiche fasi narrative.', 'Supergiant Games', '2014', 'Action RPG', 'img/Games/transistor', '90', default);
INSERT INTO gioco values(NULL, 'Crazy Taxi', 'Crazy Taxi è un videogioco arcade del genere simulatore di guida. Lo scopo del gioco, la cui ambientazione è ispirata a San Francisco, è di accompagnare vari passeggeri - uno alla volta - nel proprio taxi e guadagnare più denaro possibile prima dello scadere del tempo a disposizione. I quattro personaggi giocabili sono i tassisti Axel, BD Joe, Gena e Gus: ognuno di essi presenta un diverso stile di guida.', 'SEGA', '1999', 'Arcade', 'img/Games/crazytaxi', '80', default);
INSERT INTO gioco values(NULL, 'Sonic Mania', 'Sonic Mania è un videogioco a piattaforme della serie Sonic sviluppato da Christian Whitehead, da Headcannon e da PagodaWest Games in collaborazione con lo studio giapponese Sonic Team e pubblicato da SEGA. Realizzato in occasione del 25esimo anniversario della serie Sonic, è un vero e proprio ritorno alle origini, con un gameplay che riprende la formula della trilogia originale per Mega Drive.', 'SEGA', '2017', 'Platform', 'img/Games/sonicmania', '90', default);
INSERT INTO gioco values(NULL, 'Splatoon 2', 'Splatta dove, quando e con chi vuoi in Splatoon 2, solo su Nintendo Switch. Le tradizionali mischie mollusche quattro contro quattro fanno il loro ritorno in questo secondo capitolo della serie, insieme a diversi livelli, stili, armi e molto altro. Nelle mischie molluschi l’obiettivo è semplice: controllare più territorio possibile imbrattandolo con l’inchiostro della propria squadra. La squadra che controlla più territorio vince la partita. Trasformati in un calamaro per nuotare nell’inchiostro della tua squadra. Usa questi talenti per scalare pareti ricoperte d’inchiostro della tua squadra e raggiungere punti sopraelevati, ottimi per tendere imboscate agli ignari avversari.', 'Nintendo', '2017', 'Sparatutto', 'img/Games/splatoon2', '100', default);
INSERT INTO gioco values(NULL, 'Donkey Kong Country: Tropical Freeze', 'Donkey Kong Country: Tropical Freeze, conosciuto in Giappone come Donkey Kong: Tropical Freeze è un videogioco a piattaforme sviluppato da Retro Studios e pubblicato dalla Nintendo nel 2014. Il titolo vede protagonisti Donkey Kong, Diddy Kong, Dixie Kong e Cranky Kong, i quali hanno il compito di contrastare la presenza sulla loro isola delle creature conosciute come Nevichinghi, popolo dei mari del nord.', 'Nintendo', '2014', 'Platform', 'img/Games/dkctropicalfreeze', '120', default);
INSERT INTO gioco values(NULL, 'The Witcher 3: Wild Hunt', 'The Witcher 3: Wild Hunt (in polacco Wiedźmin 3: Dziki Gon) è un videogioco action RPG del 2015, sviluppato da CD Projekt RED e pubblicato da CD Projekt. conclude la storia del witcher Geralt di Rivia, protagonista della serie. Proseguendo da The Witcher 2: Assassins of Kings, Geralt ha finalmente recuperato la sua memoria e intraprende una nuova e personale missione alla ricerca di Ciri, ragazza da lui considerata come una figlia e della quale non ha più notizie da tempo.', 'CD Projekt', '2015', 'Action RPG', 'img/Games/thewitcher3', '100', default);

INSERT INTO thread values(100, 'Suggerimenti', 'Party di Final Fantasy VII', 'Salve ragazzi. Ho ricominciato Final Fantasy VII e mi è salita una curiosità. Voi in genere che party avete usato per completare il gioco? Con quali personaggi avete accompagnato Cloud in battaglia? Ditemi quali sono i vostri preferiti o più forti a seconda delle vostre strategie; e se ne avete allenati più di tre. Parto io dicendo che la prima volta ho usato Tifa o Barret e Aerith. Lei è utilissima con la sua Limit nella prima parte del gioco. Dopo invece ho allenato Tifa e Cid per arrivare a Sephiroth. Fatemi sapere!', 'CloudStrife', 1);
INSERT INTO thread values(NULL, 'Torneo', 'Torneo di Street Fighter V', 'Siete pronti per un nuovo e sprizzante torneo di Street Fighter V! Non avere paura e affronta i migliori giocatori di GamesSquare in una sfida senza esclusioni di colpi. Le iscrizioni apriranno tra due giorni tramite commenti al thread seguente. Il torneo si terrà il sabato successivo, con le iscrizioni che termineranno due ore prima il torneo.', 'ZackFair', 6);
INSERT INTO thread values(NULL, 'Opinioni', 'Hades: pareri dei giocatori', 'Salve ragazzi, sono Amir Rao di Supergiant Games, direttore del revente Hades. Sono felicissimo che il gioco sia potuto uscire nella sua versione finale per PC e Nintendo Switch e che sia stato accolto benissimo da critica e pubblico. SOno qui su GameSquare per avere un diretto contatto con voi giocatori. Quali sono state le vostre sensazioni riguardo al titolo, cosa vi è piaciuto di più e sopratutto cosa non vi ha convinto del gioco. Saremo contentissimi di ascoltare i vostri pareri in vista di un nuovo prodotto per migliorare sempre di più la nostra visione verso i videogiochi.', 'AmirRao', 7);
INSERT INTO thread values(NULL, 'Spoiler', 'QUELLA Scena', 'So che quella scena la conoscono tutti, ma mi ha turbato profondamente lo stesso...', 'ZackFair', 1);

INSERT INTO voto values(9, 'AerithGain',1);
INSERT INTO voto values(10, 'AerithGain',2);
INSERT INTO voto values(10, 'AerithGain',3);
INSERT INTO voto values(9, 'AerithGain',7);
INSERT INTO voto values(8, 'CynthiaPT',1);
INSERT INTO voto values(8, 'CynthiaPT',2);

INSERT INTO elemento_lista values('AerithGain', 1, 'Platinato');
INSERT INTO elemento_lista values('AerithGain', 2, 'In corso');
INSERT INTO elemento_lista values('AerithGain', 3, 'Completato');
INSERT INTO elemento_lista values('AmirRao', 7, 'Sviluppato');
INSERT INTO elemento_lista values('AmirRao', 11, 'Sviluppato');
INSERT INTO elemento_lista values('AmirRao', 14, 'Sviluppato');

INSERT INTO richiesta_gioco values(1, 'Zagreus94', 'asdasd', 'sdasda', '1990', 'Altro', 'https://www.google.com/');
INSERT INTO richiesta_gioco values(NULL, 'Zagreus94', 'Cave Story', 'Studio Pixel', '2004', 'Platform', 'https://www.cavestory.org/');

