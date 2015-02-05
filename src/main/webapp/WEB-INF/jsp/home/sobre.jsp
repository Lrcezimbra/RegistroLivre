<%@ page language="java" contentType="text/html; charset=iso-8859-1"
    pageEncoding="iso-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="pt-br">
<head>
	<title>Sobre</title>
	<jsp:include page="/WEB-INF/jsp/includes/assets.jsp" />	
	
	<script type="text/javascript">
		var setaCorDaBorda = function setaCorDaBorda(elemento){
			var corAleatoria;
			corAleatoria = Math.floor(Math.random()*16777215).toString(16);
			elemento.css("border-color", "#" + corAleatoria);
			elemento.css("box-shadow", "1px 1px 10px #" + corAleatoria);			
		}
	
		$(document).ready(function(){			
			$(".avatar .imagem").each(function(){				
				setaCorDaBorda($(this));		
				$(this).hover(function(){setaCorDaBorda($(this))});
			});				
		});		
	</script>	
</head>
<body>
	<jsp:include page="/WEB-INF/jsp/includes/cabecalho.jsp" />
		<div class="content">
			<div class="row">
				<div class="col-lg-8 col-md-8 col-sm-10 col-xs-12 col-lg-offset-2 col-md-offset-2 col-sm-offset-1">
					
					<h1 class="centralize font-size-40 title"> Quem Somos</h1>
					

					<p class="text-justify font-size-19">O <b>Registro Livre</b> � uma plataforma de dados abertos cujo objetivo principal � colocar �
					disposi��o do p�blico informa��es sobre empresas, im�veis e outros tipos de bens e atividades
					sujeitos a registro p�blico no Brasil. Embora os dados dispon�veis em cart�rios e juntas
					comerciais sejam p�blicos, eles raramente s�o publicados. O cidad�o que deseja ter acesso a
					contratos sociais e informa��es sobre propriedade de im�veis, por exemplo, precisa pagar
					taxas e aguardar v�rios dias para receber c�pias de documentos. O Registro Livre vai reunir
					estes dados numa plataforma aberta, para a qual todo cidad�o poder� contribuir. Desta forma,
					os registros p�blicos ser�o acess�veis a todos e tornados p�blicos de fato.</p>
					
					<p class="text-justify font-size-19">A <b>Aceleradora �gil</b> � um programa inovador com participantes de diversas insitui��es que tem por objetivo, 
					com aux�lio de profissionais experientes, incentiva-los a desenvolver compet�ncias t�cnicas, comportamentais, 
					de neg�cios e de governan�a necess�rias para atuar em equipes de alto desempenho de desenvolvimento de software. 
					A Aceleradora � uma parceria ThoughtWorks, PUCRS e Centro de Inova��o Microsoft.</p>
					
					
					<h1 class="centralize font-size-40 title">Equipe</h1>
					
					
					<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 avatar">
						<img src="../assets/img/alejAjustado.jpg" class="img-ponsive img-circle imagem"/>
						<div>
							<div class="nome">Alejandro</div>
							<div class="sobrenome">Olchik</div>
							<div class="papel">Scrum Master</div>							
						</div>			
					</div>

					<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 avatar">
						<img src="../assets/img/xandiAjustado.jpg" class=" img-circle imagem circulo-de-fogo"/>
						<div>
							<div class="nome">Alexandre</div>
							<div class="sobrenome">Morales</div>
							<div class="papel">Desenvolvedor</div>							
						</div>			
					</div>

					<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 avatar">
						<img src="../assets/img/anaAjustado.jpg" class=" img-circle imagem"/>
						<div>
							<div class="nome">Ana Paula</div>
							<div class="sobrenome">Daros</div>
							<div class="papel">Desenvolvedora</div>							
						</div>
					</div>
					
					<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 avatar">
						<img src="../assets/img/bernardoAjustado.jpg" class=" img-circle imagem"/>
						<div>
							<div class="nome">Bernardo</div>
							<div class="sobrenome">Est�cio</div>
							<div class="papel">Mentor</div>							
						</div>			
					</div>		
	
					<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 avatar">
						<img src="../assets/img/carisaAjustado.jpg" class=" img-circle imagem" />
						<div>
							<div class="nome">Carisa</div>
							<div class="sobrenome">Rubim</div>
							<div class="papel">Desenvolvedora</div>							
						</div>						
					</div>

					<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 avatar">
						<img src="../assets/img/evertonAjustado.jpg" class=" img-circle imagem"/>
						<div>
							<div class="nome">Everton</div>
							<div class="sobrenome">Goulart</div>
							<div class="papel">Desenvolvedor</div>							
						</div>						
					</div>
				
					<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 avatar">
						<img src="../assets/img/henriqueAjustado.jpg" class=" img-circle imagem"/>						
						<div>
							<div class="nome">Henrique</div>
							<div class="sobrenome">Braga</div>
							<div class="papel">Desenvolvedor</div>							
						</div>			
					</div>
					
					<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 avatar">
						<img src="../assets/img/user.png" class=" img-circle imagem"/>
						<div>
							<div class="nome">Jefferson</div>
							<div class="sobrenome">Stachelski</div>
							<div class="papel">mentor</div>							
						</div>			
					</div>
					
					<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 avatar">
						<img src="../assets/img/joaoAjustado.jpg" class=" img-circle imagem"/>
						<div>
							<div class="nome">Jo�o</div>
							<div class="sobrenome">H.S. Pinto</div>
							<div class="papel">Mentor</div>							
						</div>			
					</div>		
					
					<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 avatar">
						<img src="../assets/img/johnAjustado.jpg" class=" img-circle imagem"/>
						<div>
							<div class="nome">Jonatas</div>
							<div class="sobrenome">Salgado</div>
							<div class="papel">Desenvolvedor</div>							
						</div>			
					</div>
					
					<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 avatar">
						<img src="../assets/img/user.png" class=" img-circle imagem"/>
						<div>
							<div class="nome">Jos�</div>
							<div class="sobrenome">Zimermann</div>
							<div class="papel">Mentor</div>							
						</div>			
					</div>
					
					<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 avatar">
						<img src="../assets/img/josiAjustada.jpg" class=" img-circle imagem"/>
						<div>
							<div class="nome">Joseane</div>
							<div class="sobrenome">Wichrowski</div>
							<div class="papel">Desenvolvedora</div>							
						</div>			
					</div>
					
					<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 avatar">
						<img src="../assets/img/julioAjustado.jpg" class=" img-circle imagem"/>
						<div>
							<div class="nome">Julio</div>
							<div class="sobrenome">Farah</div>
							<div class="papel">Mentor</div>							
						</div>		
					</div>
					
					<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 avatar">
						<img src="../assets/img/amigoDoPOAjustado.jpg" class=" img-circle imagem"/>
						<div>
							<div class="nome">Leandro</div>
							<div class="sobrenome">Demori</div>
							<div class="papel">Coordenador</div>							
						</div>			
					</div>	
					
					<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 avatar">
						<img src="../assets/img/lucasAjustado.jpg" class=" img-circle imagem"/>
						<div>
							<div class="nome">Lucas</div>
							<div class="sobrenome">Beier</div>
							<div class="papel">Mentor</div>							
						</div>			
					</div>
								
					<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 avatar">
						<img src="../assets/img/jordaniAjustado.jpg" class=" img-circle imagem"/>
						<div>
							<div class="nome">Lucas</div>
							<div class="sobrenome">Jordani</div>
							<div class="papel">Desenvolvedor</div>							
						</div>			
					</div>						
					
					<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 avatar">
						<img src="../assets/img/rangelAjustado.jpg" class=" img-circle imagem"/>
						<div>
							<div class="nome">Lucas</div>
							<div class="sobrenome">Rangel</div>
							<div class="papel">Desenvolvedor</div>							
						</div>			
					</div>
					
					<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 avatar">
						<img src="../assets/img/violaAjustado.jpg" class=" img-circle imagem"/>
						<div>
							<div class="nome">Lucas</div>
							<div class="sobrenome">Viola</div>
							<div class="papel">Desenvolvedor</div>							
						</div>			
					</div>
					
					<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 avatar">
						<img src="../assets/img/marceloAjustado.jpg" class=" img-circle imagem"/>
						<div>
							<div class="nome">Marcelo</div>
							<div class="sobrenome">Tr�sel</div>
							<div class="papel">Coordenador</div>							
						</div>			
					</div>

					<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 avatar">
						<img src="../assets/img/marcusAjustado.jpg" class=" img-circle imagem"/>
						<div>
							<div class="nome">Marcus</div>
							<div class="sobrenome">Rodrigues</div>
							<div class="papel">Desenvolvedor</div>							
						</div>			
					</div>
					
					<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 avatar">
						<img src="../assets/img/patiAjustada.jpg" class=" img-circle imagem"/>
						<div>
							<div class="nome">Patricia</div>
							<div class="sobrenome">Durand</div>
							<div class="papel">Mentora</div>							
						</div>			
					</div>
					
					<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 avatar">
						<img src="../assets/img/samanthaAjustado.jpg" class=" img-circle imagem"/>
						<div>
							<div class="nome">Samantha</div>
							<div class="sobrenome">Rosa</div>
							<div class="papel">Mentora</div>							
						</div>			
					</div>
					
					<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 avatar">
						<img src="../assets/img/taniaAjustado.jpg" class=" img-circle imagem"/>
						<div>
							<div class="nome">T�nia</div>
							<div class="sobrenome">Silva</div>
							<div class="papel">Mentora</div>							
						</div>			
					</div>
					
					<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 avatar">
						<img src="../assets/img/thiagoAjustado.jpg" class=" img-circle imagem"/>
						<div>
							<div class="nome">Thiago</div>
							<div class="sobrenome">Xavier</div>
							<div class="papel">Mentor</div>							
						</div>			
					</div>
					
					<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 avatar">
						<img src="../assets/img/yasserAjustado.jpg" class=" img-circle imagem"/>
						<div>
							<div class="nome">Yasser</div>
							<div class="sobrenome">Rachid</div>
							<div class="papel">Desenvolvedor</div>							
						</div>			
					</div>		
															

				</div>
			</div>
		</div>
		<jsp:include page="/WEB-INF/jsp/includes/rodape.jsp" />	
</body>
</html>