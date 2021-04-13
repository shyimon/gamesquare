package gameManager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import util.*;

public class GiocoDAO {
	
	private static Connection con=null;
	private static PreparedStatement statement=null;
	private static ResultSet set=null;
	private static String viewGame;

	
	public ArrayList<Gioco> viewGame(String ...strings) throws SQLException
	{
		viewGame="SELECT * FROM gioco";
		ArrayList<Gioco> giochi=new ArrayList<Gioco>();
		int j=1;
		if(strings.length>0)
		{
			if(!Utilities.fieldOk(strings))
				throw new SQLException("parametri di ricerca errati");
			viewGame+=" WHERE ";
			for(int i=0;i<strings.length;i+=2)
			{					
				if(i!=strings.length-2)
					viewGame+=strings[i]+"=? AND ";
				else
					viewGame+=strings[i]+"=?;";
			}
		}
		try 
		{
			con=ConnectionPool.getConnection();
			statement=con.prepareStatement(viewGame);
			for(int i=1;i<strings.length;i+=2,j++) 
				statement.setString(j,strings[i]);
		
			set=statement.executeQuery();
			while(set.next())
			{
				Gioco vidya=new Gioco();
				vidya.setIdGioco(set.getInt(1));
				vidya.setNome(set.getString(2));
				vidya.setDescrizione(set.getString(3));
				vidya.setPublisher(set.getString(4));
				vidya.setAnno(set.getString(5));
				vidya.setGenere(set.getString(6));
				vidya.setImgpath(set.getString(7));
				vidya.setPunteggio(set.getInt(8));
				vidya.setMediaVoti(set.getFloat(9));
				giochi.add(vidya);
			}
		}
		finally
		{
			try
			{
				if(statement!=null)
					statement.close();
			}
			finally
			{
				ConnectionPool.rilasciaConnessione(con);
			}
		}
		return giochi;
	}
	
	

}
