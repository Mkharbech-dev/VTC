package Model;

public class Conducteur {
	
	private int id;
	private String nom;
	private String prenom;
	private String email;
	private String tel;
	
	//Les constructeurs
	public Conducteur() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Conducteur(int id, String nom, String prenom, String email, String tel) {
		super();
		this.id = id;
		this.nom = nom;
		this.prenom = prenom;
		this.email = email;
		this.tel = tel;
	}
	
	public Conducteur(String nom, String prenom, String email, String tel) {
		super();
		
		this.nom = nom;
		this.prenom = prenom;
		this.email = email;
		this.tel = tel;
	}
	//Methode toString
	@Override
	public String toString() {
		return "Conducteur [id=" + id + ", nom=" + nom + ", prenom=" + prenom + ", email=" + email + ", tel=" + tel
				+ "]";
	}
	// Les getters et Setters:
	public int getId() {
		return id;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

}
