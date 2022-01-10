package Dao;

import java.util.List;

import Model.Conducteur;

public interface IDAO {
	//T= Type générique
		public Conducteur create(Conducteur c);
		public List<Conducteur> read();
		public Conducteur getConducteur(Long id);
		public Conducteur update(Conducteur c);
		public Conducteur delete(Conducteur id);
//		public void create();

//		public void update();

//		public void delete();	
}
