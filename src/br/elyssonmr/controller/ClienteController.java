package br.elyssonmr.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.view.Results;
import br.elyssonmr.facade.ClienteDAOFacade;
import br.elyssonmr.model.Cliente;

/**
 * VRaptor Controller, todos os m�todos publicos est�o expostos para serem
 * acessados via URL, utilizando o padr�o "URL/controller/metodo" ou utilizando
 * o padr�o denominado no \@Path. O VRaptor se encarrega de instanciar e injetar
 * as deped�ncias deste controller quando for necess�rio.
 * 
 * @author elysson MR
 * 
 */

@Resource
public class ClienteController {

	private Result result;
	private ClienteDAOFacade clienteFacede;

	public ClienteController(Result result, ClienteDAOFacade facade) {
		this.result = result;
		this.clienteFacede = facade;
	}

	@Path("/")
	public void index() {
	}

	@Path("/adicionar-cliente")
	public void adicionarCliente(Cliente cliente) {
		try {
			clienteFacede.adicionarCliente(cliente);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		this.result.include("msg", "Cliente Adicionado");
		this.result.redirectTo(ClienteController.class).list();
	}

	@Path("/list")
	public List<Cliente> list() {
		List<Cliente> clientes = new ArrayList<Cliente>();
		try {
			clientes = clienteFacede.listTodosClientes();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return clientes;
	}

	@Path("/editar")
	public Cliente editForm(long id) {
		Cliente cliente = new Cliente();
		try {
			cliente = clienteFacede.lerPeloId(id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cliente;
	}

	@Path("/salvar-cliente")
	public void salvarCliente(Cliente cliente) {
		try {
			clienteFacede.atualizarCliente(cliente);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		this.result.include("msg", "Cliente Atualizado");
		this.result.redirectTo(this).list();
	}

	@Path("/excluir")
	public void excluir(Long id) {

		try {
			clienteFacede.excluirCliente(id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		this.result.include("msg", "Cliente Excluido");
		this.result.redirectTo(this).list();
	}

	@Path("/form")
	public void form() {
		result.include("titulo", "Adicionar Cliente");
	}

	@Path("/buscar")
	public void buscarClientes(String search) {
		List<Cliente> clientes = new ArrayList<Cliente>();
		try {
			clientes = clienteFacede.pesquisarCliente(search);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		result.include("clienteList", clientes);
		result.use(Results.page()).forwardTo("WEB-INF/jsp/cliente/list.jsp");
	}
}
