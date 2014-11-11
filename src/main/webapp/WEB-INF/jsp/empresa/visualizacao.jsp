<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>

<link href="assets/css/bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="assets/css/botao-pdf.css" rel="stylesheet">
<link href="assets/css/main.css" rel="stylesheet">
<script src="http://code.jquery.com/jquery-2.1.1.min.js"></script>
<script src="assets/js/visualizacao.js"></script>

</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-lg-6 col-lg-offset-3">
				<c:if test="${mensagem != null}">
	    			<div class="alert alert-success alert-dismissible" role="alert">
					  	<button type="button" class="close" id="close" data-dismiss="alert">
				  			<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
				  		</button>
					  	<strong>Cadastro realizado com sucesso!</strong> 
					</div>
	    		</c:if>
		    		
				<div class="panel panel-default margin-35-0">
					<div class="panel-heading centralize">
						<h4>Visualização de Empresa</h4>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-8">
								<dl>
									<dt>CNPJ:</dt>
									<dd>${empresa.cnpj}</dd>
								</dl>
								<dl>
									<dt>Nome fantasia:</dt> 
									<dd>${empresa.nomeFantasia}</label>
								</dl>
								<dl>
									<dt>Razão Social:</dt> 
									<dd>${empresa.razaoSocial}</dd>
								</dl>
							</div>
						
							<div class="col-lg-4">
								<div class="icon pdf">PDF</div>
							</div>

						</div>

						<dl>
							<dt>Endereço:</dt> 
							<dd>${empresa.endereco}</dd>
						</dl>
						<dl>
							<dt>Número:</dt>
							<dd>${empresa.numero}</dd>
						</dl>
						<dl>
							<dt>Complemento:</dt>
							<dd>${empresa.complemento}</dd>
						</dl>

						<dl>
							<dt>Cidade:</dt>
							<dd>${empresa.cidade}</dd>
						</dl>
						<dl>
							<dt>Estado:</dt> 
							<dd>${empresa.estado}</dd>
						</dl>

						<dl>
							<dt>CEP:</dt>
							<dd>${empresa.cep}</dd>
						</dl>

						<dl>
							<dt>Data de abertura:</dt> 
							<dd>${empresa.dataAbertura}</dd>
						</dl>

						<dl>
							<dt>Emissão de documento:</dt>
							<dd>${empresa.emissaoDocumento}</dd>
						</dl>					
					
						<h4 class="centralize panel-divider padding-6-0 margin-30-0">Estrutura Societária</h4>
					
						<c:forEach items="${empresa.socios}" var="socio">
							<dl>
								<dt>Sócio:</dt>
								<dd>${socio.id + 1}: </dd>
								<dd>${socio.nome}</dd>
								<dd>CPF:</dd>
								<dd>${socio.cpf}</dd>
								<dd>
									<c:if test="${socio.situacaoDoSocio == true}">
										<span class="label label-success">Ativo</span>
									</c:if>
									<c:if test="${socio.situacaoDoSocio == false}">
										<span class="label label-important">Inativo</span>
									</c:if>
									</c:forEach>
								</dd>
							</dl>
					</div>

					<div class="panel-footer">
						<a class="btn btn-default" href="#back">Voltar</a>
						<div style="clear: both"></div>
					</div>
					<!-- panel -->
				</div>
				<!-- col -->
			</div>
			<!-- row -->
		</div>
		</div>
		</div>
		<!-- container -->
</body>
</html>