<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<jsp:include page="/WEB-INF/jsp/header.jsp" />

<div id="form">
	<form class="form-horizontal" method="post"
		action='<c:url value="salvar-cliente"/>'>
		<fieldset>
			<!-- Form Name -->
			<legend>
				<h2>Editar Cliente "${cliente.nome}"</h2>
			</legend>
			<input id="cliente.id" name="cliente.id" type="hidden"
				placeholder="Nome do cliente" class="input-xlarge" required=""
				value="${cliente.id}">

			<div class="control-group">
				<label class="control-label" for="cliente.nome">Nome</label>
				<div class="controls">
					<input id="cliente.nome" name="cliente.nome" type="text"
						placeholder="Nome do cliente" class="input-xlarge" required=""
						value="${cliente.nome}">
				</div>
			</div>

			<!-- Text input-->
			<div class="control-group">
				<label class="control-label" for="cliente.endereco">Endereço</label>
				<div class="controls">
					<input id="cliente.endereco" name="cliente.endereco" type="text"
						placeholder="Endereço do cliente" class="input-xlarge" required=""
						value="${cliente.endereco}">
				</div>
			</div>

			<div class="control-group">
				<label class="control-label" for="cliente.bairro">Bairro</label>
				<div class="controls">
					<input id="cliente.bairro" name="cliente.bairro" type="text"
						placeholder="Bairro do Cliente" class="input-xlarge" required=""
						value="${cliente.bairro}">
				</div>
			</div>

			<div class="control-group">
				<label class="control-label" for="cliente.cidade">Cidade</label>
				<div class="controls">
					<input id="cliente.cidade" name="cliente.cidade" type="text"
						placeholder="Cidade do Cliente" class="input-xlarge" required=""
						value="${cliente.cidade}">
				</div>
			</div>

			<div class="control-group">
				<label class="control-label" for="cliente.email">E-mail</label>
				<div class="controls">
					<input id="cliente.email" name="cliente.email" type="text"
						placeholder="Email do Cliente" class="input-xlarge" required=""
						value="${cliente.email}">
				</div>
			</div>

			<div class="control-group">
				<label class="control-label" for="cliente.idade">idade</label>
				<div class="controls">
					<input id="cliente.idade" name="cliente.idade" type="number"
						placeholder="Idade do Cliente" class="input-xlarge" required=""
						value="${cliente.idade}">
				</div>
			</div>

			<!-- Text input-->
			<div class="control-group">
				<label class="control-label" for="cliente.telefone">Telefone</label>
				<div class="controls">
					<input id="cliente.telefone" name="cliente.telefone" type="text"
						placeholder="(xxx) xxxxx-xxxx" class="input-medium" required=""
						value="${cliente.telefone}">
				</div>
			</div>
			<div class="form-actions">
				<div class="pull-right">
					<button type="submit" class="btn btn-primary">Salvar</button>
				</div>
			</div>
		</fieldset>
	</form>
</div>

<jsp:include page="/WEB-INF/jsp/footer.jsp" />