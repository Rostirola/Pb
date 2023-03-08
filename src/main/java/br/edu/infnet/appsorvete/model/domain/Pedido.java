package br.edu.infnet.appsorvete.model.domain;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import br.edu.infnet.appsorvete.model.exceptions.PedidoSemAlimentoException;
import br.edu.infnet.appsorvete.model.exceptions.PedidoSemSolicitanteException;

public class Pedido {

	private String comentario;
	private boolean dinheiro;
	private LocalDateTime data;
	private String vendedor;
	private Cliente cliente;
	private List<Alimento> alimentos;

	public String getComentario() {
		return comentario;
	}

	public void setComentario(String comentario) {
		this.comentario = comentario;
	}

	public boolean isDinheiro() {
		return dinheiro;
	}

	public void setDinheiro(boolean dinheiro) {
		this.dinheiro = dinheiro;
	}
	
	public void imprimir() {
		System.out.println("Pedido: " + this);
		System.out.println("Qtde Alimentos: " + alimentos.size());
		System.out.println("Cliente: " + cliente);
		System.out.println("Alimentos: ");
		for(Alimento a : alimentos) {
		System.out.println(" - " + a.getSabor());
		}
	}
	
	public String obterLinha() {
		
		return this.getComentario() + ";" + this.getCliente() + ";" + this.getAlimentos().size() + "\r\n";
	}

	public Pedido(Cliente cliente, List<Alimento> alimentos) throws PedidoSemSolicitanteException, PedidoSemAlimentoException {
		
		if(cliente == null) {
			throw new PedidoSemSolicitanteException("Não existe nenhum cliente associado ao pedido!");
		}
		
		if(alimentos == null) {
			throw new PedidoSemAlimentoException("Não existe nenhum alimento associado ao pedido!");
		}
		
		this.cliente = cliente;
		this.alimentos = alimentos;

		data = LocalDateTime.now();
	}
	
	@Override
	public String toString() {
		
		DateTimeFormatter formato = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm");

		return String.format("%s;%s;%s", comentario, dinheiro ? "dinheiro" : "cartao", data.format(formato));
		
		 
	}

	public String getVendedor() {
		return vendedor;
	}

	public void setVendedor(String vendedor) {
		this.vendedor = vendedor;
	}

	public Cliente getCliente() {
		return cliente;
	}

	public List<Alimento> getAlimentos() {
		return alimentos;
	}

	public LocalDateTime getData() {
		return data;
	}

}
