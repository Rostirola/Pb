package br.edu.infnet.appsorvete.model.domain;

import br.edu.infnet.appsorvete.model.exceptions.ClienteInvalidoException;

public class Cliente {

	private String nome;
	private int cpf;
	private int idade;
	private String email;
	private boolean genero;
	
	
	
	public Cliente(String nome, int cpf, int idade, String email, boolean genero) throws ClienteInvalidoException {
		
		if(nome == null) {
			throw new ClienteInvalidoException("O nome do cliente deve ser preenchido");
		}
		if(cpf < 100000000) {
			throw new ClienteInvalidoException("O CPF do cliente deve ser preenchido");
		}
		if(idade < 0) {
			throw new ClienteInvalidoException("O idade do cliente deve ser preenchido");
		}
		if(email == null) {
			throw new ClienteInvalidoException("O e-mail do cliente deve ser preenchido");
		}
		
		this.nome = nome;
		this.cpf = cpf;
		this.idade = idade;
		this.email = email;
		this.genero = genero;
	}
	
	@Override
	public String toString() {
		
		StringBuilder sb = new StringBuilder();
		sb.append(nome);
		sb.append(";");
		sb.append(cpf);
		sb.append(";");
		sb.append(idade);
		sb.append(";");
		sb.append(email);
		sb.append(";");
		sb.append(genero);
		
		return sb.toString();
	}	

	public boolean isGenero() {
		return genero;
	}

	public String getEmail() {
		return email;
	}

	public int getIdade() {
		return idade;
	}

	public int getCpf() {
		return cpf;
	}

	public String getNome() {
		return nome;
	}
	
	
	
}
