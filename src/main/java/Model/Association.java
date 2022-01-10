package Model;

public class Association {
	private int id_association;
	private Conducteur conducteur;
	private Vehicule vehicule;
	public Association(int id_association, Conducteur conducteur, Vehicule vehicule) {
		super();
		this.id_association = id_association;
		this.conducteur = conducteur;
		this.vehicule = vehicule;
	}
	public Association() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getId_association() {
		return id_association;
	}
	public void setId_association(int id_association) {
		this.id_association = id_association;
	}
	public Conducteur getConducteur() {
		return conducteur;
	}
	public void setConducteur(Conducteur conducteur) {
		this.conducteur = conducteur;
	}
	public Vehicule getVehicule() {
		return vehicule;
	}
	public void setVehicule(Vehicule vehicule) {
		this.vehicule = vehicule;
	}
	@Override
	public String toString() {
		return "Association [id_association=" + id_association + ", conducteur=" + conducteur + ", vehicule=" + vehicule
				+ "]";
	}
	
}
