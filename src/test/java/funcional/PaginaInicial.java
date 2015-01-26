package funcional;

import static org.fest.assertions.Assertions.assertThat;

import org.fluentlenium.core.FluentPage;

public class PaginaInicial extends FluentPage{
	
	public String getUrl(){
		return "http://registro-livre-staging.herokuapp.com";
	}
	
	@Override
	public void isAt(){
		assertThat(title().contains("Registro Livre"));
	}
	

	public void abreBuscaAvancada() throws InterruptedException {
		click("#abrir-busca-avancada");

		Thread.sleep(1000);
	}
	
	
	public boolean preencheInputDaBusca(String parametro) throws InterruptedException {
		fill("#campoPesquisado").with(parametro);
		
		return find("#btn-submit").first().isEnabled();
	}
	

}