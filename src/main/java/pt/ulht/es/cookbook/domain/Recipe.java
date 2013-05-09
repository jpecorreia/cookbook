package pt.ulht.es.cookbook.domain;

public class Recipe {

	private String id;
	private String titulo;
	private String problema;
	private String solucao;
	private String utilizador;
	
	public Recipe(String titulo, String problema, String solucao, String utilizador) {
		
		this.titulo = titulo;
		this.solucao = solucao;
		this.problema = problema;
		this.utilizador = utilizador;
		
	}

	public String getTitulo() {
		return titulo;
	}
	
	public String getProblema() {
		return problema;
}
	public String getSolucao() {
		return solucao;
	}
	
	public String getUtilizador() {
		return utilizador;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	
}

