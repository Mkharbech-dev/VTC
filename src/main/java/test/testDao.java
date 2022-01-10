package test;

import java.util.List;

import Dao.ConducteurDao;
import Model.Conducteur;

public class testDao {

	public static void main(String[] args) {
		ConducteurDao cond = new ConducteurDao();
		Conducteur chauffeur = cond.create(new Conducteur("saghir", "ahmed", "saghir@gmail.fr", "0687878787"));
		//System.out.println(chauffeur);
		
		
		List<Conducteur> con =cond.read();
		for(Conducteur item : con)
			System.out.println(item);
	}

}
