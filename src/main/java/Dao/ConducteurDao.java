package Dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Model.Conducteur;



public class ConducteurDao implements IDAO{
	//Appel de la connection

			//Connection connect = Connect.getConnectionWindows();
			Connection connect = Connect.getConnection();

			public boolean mailExist(String email) {
				Boolean msg = false;
				try {
					PreparedStatement sql = connect.prepareStatement("SELECT * FROM user WHERE email = ?");
					
					sql.setString(1, email);
					
					ResultSet rs = sql.executeQuery();
					
					if(!rs.next()) {
						msg = true;
					}
					
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				return msg;
			}
			
		    public  List<Conducteur> read() {
	        
	        List<Conducteur> conducteurs = new ArrayList<Conducteur>();
	        
	        //pour récupérer les données de la table: resultset
	        ResultSet rs = null;
	        
	        //plus sécur:
	        PreparedStatement sql2;
	        try {
	            sql2 = connect.prepareStatement("SELECT * FROM conducteur");
	            //sql2.setString(1,"client");
	            
	            rs = sql2.executeQuery();
	            while(rs.next()) {
	                //System.out.println("Le nom "+rs.getString("nom")+" le prenom "+rs.getString("prenom"));
	            	Conducteur cond = new Conducteur(rs.getInt("id_conducteur"), rs.getString("nom"), rs.getString("prenom"), rs.getString("email"), rs.getString("tel"));
	            	conducteurs.add(cond); 
	            }
	            
	        } catch (SQLException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        }
	        return conducteurs;
	        
	    }	
			public Conducteur create(Conducteur c) {
				
				try {
					PreparedStatement sql = connect.prepareStatement("INSERT INTO conducteur (nom, prenom, email, tel)"
							+ " VALUES (?,?,?,?)");
					sql.setString(1, c.getNom());
					sql.setString(2, c.getPrenom());
					sql.setString(3, c.getEmail());
					sql.setString(4, c.getTel());
					
					sql.executeUpdate();
					
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return c;
			}
			@Override
			public Conducteur getConducteur(Long id) {
				// TODO Auto-generated method stub
				return null;
			}



			@Override
			public Conducteur update(Conducteur c) {
				// TODO Auto-generated method stub
				return null;
			}



			@Override
			public Conducteur delete(Conducteur id) {
				// TODO Auto-generated method stub
				return null;
			}
			
		    public void update(Conducteur cond, int id) {
	    	try {
				PreparedStatement sql = connect.prepareStatement("UPDATE conducteur SET nom=?, prenom=?, email=?, tel=? WHERE id=?");
				sql.setString(1, cond.getNom());
				sql.setString(2, cond.getPrenom());
				sql.setString(3, cond.getEmail());
				sql.setString(4, cond.getTel());
				sql.setInt(5, id);
				
				sql.executeUpdate();
				System.out.println(cond.getNom()+ " a ete bien modifié");
	    	} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	    	
	    }
	    
	    // Delete
	    public void delete(int id) {
			try {
				PreparedStatement sql = connect.prepareStatement("DELETE FROM conducteur WHERE id=?");
				sql.setInt(1, id);
				sql.executeUpdate();
				System.out.println("effacement ok");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

}
