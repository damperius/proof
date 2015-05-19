
<%@ page import="v.market.Almacen" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'almacen.label', default: 'Almacen')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-almacen" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-almacen" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nit" title="${message(code: 'almacen.nit.label', default: 'Nit')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'almacen.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="razonSocial" title="${message(code: 'almacen.razonSocial.label', default: 'Razon Social')}" />
					
						<g:sortableColumn property="address" title="${message(code: 'almacen.address.label', default: 'Address')}" />
					
						<g:sortableColumn property="telefono" title="${message(code: 'almacen.telefono.label', default: 'Telefono')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'almacen.email.label', default: 'Email')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${almacenInstanceList}" status="i" var="almacenInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${almacenInstance.id}">${fieldValue(bean: almacenInstance, field: "nit")}</g:link></td>
					
						<td>${fieldValue(bean: almacenInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: almacenInstance, field: "razonSocial")}</td>
					
						<td>${fieldValue(bean: almacenInstance, field: "address")}</td>
					
						<td>${fieldValue(bean: almacenInstance, field: "telefono")}</td>
					
						<td>${fieldValue(bean: almacenInstance, field: "email")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${almacenInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
