package br.com.unipe.aula.model;

import java.io.Serializable;

import javax.persistence.*;

@Entity
@Table(name="membros_clube_leitura")
public class MembroClubeLeitura implements Serializable {
	
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Column(nullable=false, length=100)
	private String nome;
	@Column(nullable=false)
	private String dataNascimento;
	@Column(nullable=false, length=10)
	private String sexo;
	@Column(nullable=false, length=100)
	private String endereco;
	@Column(nullable=false, length=20)
	private String generoFavorito;
	@Column (nullable=false, length=20)
	private String contato;
	@Column(nullable=false, length=100)
	private String email;
	
	public MembroClubeLeitura() {}
	public MembroClubeLeitura(Long id, String nome, String dataNascimento, String sexo, String endereco, String generoFavorito, 
			String contato, String email) {
		super();
		this.id = id;
		this.nome = nome;
		this.dataNascimento = dataNascimento;
		this.sexo = sexo;
		this.endereco = endereco;
		this.generoFavorito = generoFavorito;
		this.contato = contato;
		this.email = email;
	}
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public String getDataNascimento() {
		return dataNascimento;
	}
	public void setDataNascimento(String dataNascimento) {
		this.dataNascimento = dataNascimento;
	}
	
	public String getSexo() {
		return sexo;
	}
	public void setSexo(String sexo) {
		this.sexo = sexo;
	}
	
	public String getEndereco() {
		return endereco;
	}
	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}
	
	public String getGeneroFavorito() {
		return generoFavorito;
	}
	public void setGeneroFavorito(String generoFavorito) {
		this.generoFavorito = generoFavorito;
	}
	
	public String getContato() {
        return contato;
    }
    public void setContato(String contato) {
        this.contato = contato;
    }
	
    public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
}
