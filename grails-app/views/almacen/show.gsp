
<%@ page import="v.market.Almacen" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'css', file: 'bootstrap.min.css')}" />
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'css', file: 'custom.css')}" />
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'css', file: 'profileOwn.css')}" />
    <!-- ||||||||||||||| SCRIPTS ||||||||||||||| -->
    <g:javascript src="jquery-1.11.2.min.js" />
    <g:javascript src="bootstrap.min.js" />
    <g:javascript src="context.js" />

    <title>${Almacen}</title>

</head>

<body class="body">
<!-- CABEZA DE LA PAGINA -->
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <!--El header es el "fondo" del encabezado (navbar-header)-->
        <div class="navbar-header">
            <!-- Si la pagina se vuelve pequeña (sr-only) aparece un botton
                      que al desplegarse mostrara el contenido del encabezado
                      (data-target="#navbar"), esto se llama "colapsar".-->
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <!--El header contiene el boton "inicio"-->
            <a class="navbar-brand" href="">V-Market <span class="glyphicon glyphicon-asterisk"></span>
            </a>
        </div>

        <!-- contenido del encabezado (navbar), el cual es colapsable -->
        <div id="navbar" class="navbar-collapse collapse">

        <!-- todo lo que esta alineado a la derecha (navbar-right) cambia dependiendo
                         de si el usuario esta o no loggeado-->


            <g:form class="navbar-form navbar-right">
                <div class="navbar-right">
                    <g:actionSubmit value="LogOut" name="submitButton" action="logout" class="btn btn-success"/>
                </div>
            </g:form>
            <div class="navbar-text navbar-right">Hola, ${session.user}</div>


        </div><!--/.navbar-collapse -->
    </div>
</nav>

<div id="show-almacen" class="profile scaffold-show" role="main">
    <div class="profileContent">
        <div class="container">
            <div class="row">
                <h1> Almacen<span class="glyphicons glyphicons-shopping-bag"></span></h1>
            </div>
            <div class="row">
                <div class="col-md-1 profilep">

                </div>
                <div class="col-md-3 profilep">
                    <div  class="panel-body panelAlmacenBody">
                        <img src="${almacenInstance.urlImageProduct}" class="img-responsive img-rounded" alt="Almacen image" width="200" height="150">
                    </div>
                </div>
                <div class="col-md-8 profilep">
                    <table class="table table-hover">
                        <%--<thead>
                        <tr>
                            <th>Firstname</th>
                            <th>Lastname</th>
                        </tr>
                        </thead>--%>

                        <tbody>
                        <tr>
                            <td>NIT</td>
                            <td><span class="property-value" aria-labelledby="nit-label"><g:fieldValue bean="${almacenInstance}" field="nit"/></span></td>
                        </tr>
                        <tr>
                            <td>Nombre Comercial</td>
                            <td><span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${almacenInstance}" field="name"/></span></td>
                        </tr>
                        <tr>
                            <td>Razón Social</td>
                            <td><span class="property-value" aria-labelledby="razonSocial-label"><g:fieldValue bean="${almacenInstance}" field="razonSocial"/></span></td>
                        </tr>
                        <tr>
                            <td>Tipo de Productos</td>
                            <td><span class="property-value" aria-labelledby="tipoProducto-label"><g:fieldValue bean="${almacenInstance}" field="tipoProducto"/></span></td>
                        </tr>
                        <tr>
                            <td>Dirección</td>
                            <td><span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${almacenInstance}" field="address"/></span></td>
                        </tr>
                        <tr>
                            <td>Telefono</td>
                            <td><span class="property-value" aria-labelledby="telefono-label"><g:fieldValue bean="${almacenInstance}" field="telefono"/></span></td>
                        </tr>
                        <tr>
                            <td>E-mail</td>
                            <td><span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${almacenInstance}" field="email"/></span></td>
                        </tr>
                        <tr>
                            <td>Ciudad</td>
                            <td><span class="property-value" aria-labelledby="ciudad-label"><g:fieldValue bean="${almacenInstance}" field="ciudad"/></span></td>
                        </tr>
                        <tr>
                            <td>País</td>
                            <td><span class="property-value" aria-labelledby="pais-label"><g:fieldValue bean="${almacenInstance}" field="pais"/></span></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>

        </div>
        <g:form url="[resource:almacenInstance, action:'delete']" method="DELETE">
            <fieldset class="buttons">
                <g:link class="edit" action="edit" resource="${almacenInstance}"><g:message code="default.button.edit.label" default="Editar" /></g:link>
                <g:actionSubmit class="list" action="index" value="${message(code: 'See almacen list', default: 'Lista de almacenes')}" onclick="return confirm('${message(code: 'See list', default: '¿Salir de descripción del almacen?')}');" />
                <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Eliminar')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: '¿Está seguro?')}');" />
            </fieldset>
        </g:form>

    </div>
</div>
</body>
</html>
