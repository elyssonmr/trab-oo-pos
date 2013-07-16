<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<jsp:include page="/WEB-INF/jsp/header.jsp" />

<div id="form">
	<form class="form-horizontal" method="post"
		action="<c:url value="adicionar-cliente"/>">
		<fieldset>
			<!-- Form Name -->
			<legend>
				<h2>Adicionar Cliente</h2>
			</legend>
			<!-- Text input-->
			<div class="control-group">
				<label class="control-label" for="cliente.nome">Nome</label>
				<div class="controls">
					<input id="cliente.nome" name="cliente.nome" type="text"
						placeholder="Nome do cliente" class="input-xlarge" required="">
				</div>
			</div>

			<!-- Text input-->
			<div class="control-group">
				<label class="control-label" for="cliente.endereco">Endereço</label>
				<div class="controls">
					<input id="cliente.endereco" name="cliente.endereco" type="text"
						placeholder="Endereço do cliente" class="input-xlarge" required="">
				</div>
			</div>

			<div class="control-group">
				<label class="control-label" for="cliente.bairro">Bairro</label>
				<div class="controls">
					<input id="cliente.bairro" name="cliente.bairro" type="text"
						placeholder="Bairro do Cliente" class="input-xlarge" required="">
				</div>
			</div>

			<div class="control-group">
				<label class="control-label" for="cliente.cidade">Cidade</label>
				<div class="controls">
					<input id="cliente.cidade" name="cliente.cidade" type="text"
						placeholder="Cidade do Cliente" class="input-xlarge" required="">
				</div>
			</div>
			
			<div class="control-group">
				<label class="control-label" for="cliente.email">E-mail</label>
				<div class="controls">
					<input id="cliente.email" name="cliente.email" type="text"
						placeholder="Email do Cliente" class="input-xlarge" required="">
				</div>
			</div>
			
			<div class="control-group">
				<label class="control-label" for="cliente.idade">idade</label>
				<div class="controls">
					<input id="cliente.idade" name="cliente.idade" type="number"
						placeholder="Idade do Cliente" class="input-xlarge" required="">
				</div>
			</div>

			<!-- Text input-->
			<div class="control-group">
				<label class="control-label" for="cliente.telefone">Telefone</label>
				<div class="controls">
					<input id="cliente.telefone" name="cliente.telefone" type="text"
						placeholder="(xxx) xxxxx-xxxx" class="input-medium" required="">
				</div>
			</div>
			<div class="form-actions">
				<div class="pull-right">
					<button type="submit" class="btn btn-primary">Adicionar</button>
					<button type="reset" class="btn">Limpar</button>
				</div>
			</div>
		</fieldset>
	</form>
</div>

<script type="text/javascript">
	$('#addNav').addClass('active');
</script>

<jsp:include page="/WEB-INF/jsp/footer.jsp" />