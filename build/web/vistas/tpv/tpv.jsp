<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>TPV - Tomar Pedido</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet"/>
    </head>
    <body class="bg-light">

        <!-- NAVBAR -->
        <nav class="navbar navbar-dark bg-primary mb-4">
            <div class="container-fluid d-flex justify-content-between align-items-center">
                <!-- Botón Volver -->
                <s:form action="tpvMesas" method="post" cssClass="d-inline">
                    <s:hidden name="mesa.id" value="%{mesa.id}"/>
                    <button type="submit" class="btn btn-light">
                        <i class="bi bi-arrow-left-circle"></i> Volver
                    </button>
                </s:form>

                <!-- Título centrado -->
                <h3 class="text-white m-0 mx-auto position-absolute start-50 translate-middle-x">
                    TPV mesa: <s:property value="%{mesa.id}"/>
                </h3>
            </div>
        </nav>

        <div class="container-fluid">
            <div class="row">
                <!-- CATEGORÍAS EN CARDS -->
                <div class="col-md-8">
                    <h4 class="mb-4">Categorías</h4>

                    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-4">
                        <s:iterator value="listaCategoria">
                            <div class="col">
                                <s:form action="tpvCategoriaSeleccionada" method="post">
                                    <s:hidden name="mesa.id" value="%{mesa.id}"/>
                                    <s:hidden name="categoria.id" value="%{id}" />
                                    <button type="submit" class="btn btn-light w-100 p-0 border rounded shadow-sm">
                                        <div class="card h-100 text-center">
                                            <div class="card-body d-flex flex-column justify-content-center">
                                                <h5 class="card-title"><s:property value="nombre" /></h5>
                                            </div>
                                        </div>
                                    </button>
                                </s:form>
                            </div>
                        </s:iterator>
                    </div>
                </div>

                <!-- PEDIDO ACTUAL -->
                <div class="col-md-4">
                    <h4>Pedido Actual</h4>

                    <table class="table table-striped table-bordered">
                        <thead class="table-primary">
                            <tr>
                                <th>Nombre</th>
                                <th>Cantidad</th>
                                <th>Acción</th>
                            </tr>
                        </thead>
                        <tbody>
                            <s:iterator value="listaPlatosPedido">
                                <tr>
                                    <td><s:property value="plato.nombre"/></td>
                                    <td><s:property value="cantidad"/></td>
                                    <td>
                                        <s:form action="eliminarDelPedido" method="post" cssClass="d-inline">
                                            <s:hidden name="mesaID" value="%{mesa.id}"/>
                                            <s:hidden name="comandaID" value="%{id}" />
                                            <button class="btn btn-danger btn-sm">
                                                <i class="bi bi-trash"></i>
                                            </button>
                                        </s:form>
                                    </td>
                                </tr>
                            </s:iterator>
                        </tbody>
                    </table>


                    <!-- BOTONES DE ACCIÓN -->
                    <div class="d-grid gap-2">
                        <s:form action="confirmarPedido" method="post">
                            <s:hidden name="mesaID" value="%{mesa.id}"/>
                            <button class="btn btn-primary" type="submit" 
                                    onclick="return confirm('¿Está seguro de confirmar este pedido?');">
                                <i class="bi bi-check-circle"></i> Confirmar Pedido
                            </button>
                        </s:form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
