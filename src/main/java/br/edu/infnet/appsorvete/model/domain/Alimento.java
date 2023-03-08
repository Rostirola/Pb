package br.edu.infnet.appsorvete.model.domain;

import br.edu.infnet.appsorvete.model.exceptions.PrecoZeradoException;
import br.edu.infnet.appsorvete.model.exceptions.TamanhoBebidaInvalidoException;
import br.edu.infnet.appsorvete.model.exceptions.TamanhoMilkshakeInvalidoException;
import br.edu.infnet.appsorvete.model.exceptions.TamanhoSorveteInvalidoException;

public abstract class Alimento {

	private float preco;
	private String sabor;
	private int quantidade;
	
	public Alimento(float preco, String sabor, int quantidade) throws PrecoZeradoException {
		
		if(preco == 0) {
			 throw new PrecoZeradoException("O preco esta zerado!");
		}
		
		if(preco < 0) {
			 throw new PrecoZeradoException("O preco esta negativo!");
		}
		
		this.preco = preco;
		this.sabor = sabor;
		this.quantidade = quantidade;
	}
	
	public abstract float calcularValorVenda() throws TamanhoBebidaInvalidoException, TamanhoMilkshakeInvalidoException,TamanhoSorveteInvalidoException;
	
	@Override
	public String toString() {

		StringBuilder sb = new StringBuilder();
		sb.append(preco);
		sb.append(";");
		sb.append(sabor);
		sb.append(";");
		sb.append(quantidade);
		sb.append(";");
		
		return sb.toString();
	}

	public float getPreco() {
		return preco;
	}

	public String getSabor() {
		return sabor;
	}

	public int getQuantidade() {
		return quantidade;
	}
	
	
	
	
}
