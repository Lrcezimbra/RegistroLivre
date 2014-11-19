package br.com.aceleradora.RegistroLivre.controller;

import java.io.File;
import java.util.List;

import br.com.aceleradora.RegistroLivre.dao.EmpresaDAO;
import br.com.aceleradora.RegistroLivre.model.Empresa;
import br.com.aceleradora.RegistroLivre.model.Validador;
import br.com.aceleradora.RegistroLivre.util.Arquivo;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;
import br.com.caelum.vraptor.interceptor.multipart.UploadedFile;
import br.com.caelum.vraptor.validator.Validations;

@Resource
public class EmpresaController {

	private EmpresaDAO daoEmpresa;
	private Result result;
	private Validator validator;

	public EmpresaController(EmpresaDAO dao, Result result, Validator validator) {
		this.daoEmpresa = dao;
		this.result = result;
		this.validator = validator;
	}

	@Get("/cadastro")
	public void cadastro() {
	}

	@Get("/listagem")
	public List<Empresa> listagem() {
		result.include("totalDeRegistros",
				daoEmpresa.contaQuantidadeDeRegistros());
		return daoEmpresa.getTodas();
	}

	@Get("/visualizacao/{empresa.id}")
	public Empresa visualizacao(Empresa empresa) {
		return daoEmpresa.getById(empresa.getId());
	}

	public void cadastrar(final Empresa empresa, UploadedFile arquivo) {
		empresa.setSocios(Validador.retiraSociosNulos(empresa.getSocios()));
		validator.checking(new Validations() {
			{
				that(Validador.verificaNumeroEndereco(empresa.getEndereco()
						.getNumero()), "empresa.endereco.numero",
						"numero.invalido");

				that(Validador.verificaCnpj(empresa.getCnpj()), "empresa.cnpj",
						"cnpj.invalido");

				that(Validador.verificaNomeFantasia(empresa.getNomeFantasia()),
						"empresa.nomeFantasia", "nomeFantasia.obrigatorio");

				that(Validador.verificaCpfListaSocio(empresa.getSocios()),
						"empresa.socios", "cpf.invalido");
			}
		});
		validator.onErrorUsePageOf(this).cadastro();

		try {
			File arquivoParaUpload = Arquivo.inputStreamParaFile(
					arquivo.getFile(), empresa.getCnpj());

			String url = Arquivo.uploadReturnUrl(arquivoParaUpload);

			empresa.setUrl(url);

			daoEmpresa.adiciona(empresa);
			result.include("mensagem", "true");
			result.redirectTo(this).visualizacao(empresa);
		} catch (Exception e) {
			System.out.println("ERRO Cadastrar: " + e.getMessage());
			e.printStackTrace();
		}
	}

}
