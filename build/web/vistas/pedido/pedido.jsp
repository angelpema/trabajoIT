<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8" />
        <title>Pedidos</title>
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    </head>
    <body style="background: #f8f9fa;">

        <div class="container my-5">
            <h1 class="mb-4 text-center fw-bold">Pedidos</h1>

            <div class="mb-4 d-flex justify-content-between align-items-center flex-wrap gap-2">
                <s:form action="index" method="post" style="margin:0;">
                    <button type="submit" class="btn btn-secondary">
                        <i class="bi bi-arrow-left-circle me-2"></i> Volver al panel de gestión
                    </button>
                </s:form>
                
                <s:form action="altaPedido" style="margin:0;">
                    <button type="submit" class="btn btn-primary">
                        <i class="bi bi-plus-circle me-2"></i> Nuevo Pedido
                    </button>
                </s:form>
            </div>

            <div class="table-responsive shadow-sm rounded">
                <table class="table table-striped table-hover align-middle bg-white">
                    <thead class="table-dark">
                        <tr>
                            <th>ID</th>
                            <th>Mesa</th>
                            <th>Camarero</th>
                            <th>Fecha y Hora</th>
                            <th>Estado</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <s:iterator value="listaPedido">
                            <tr>
                                <td><s:property value="id"/></td>
                                <td><s:property value="mesa.id"/></td>
                                <td><s:property value="camarero.dni"/></td>
                                <td><s:property value="fechaHora"/></td>
                                <td><s:property value="estado"/></td>
                                <td class="text-nowrap">
                                    <div class="d-flex gap-2">
                                        <s:form action="modificarPedido" method="post" style="margin:0;">
                                            <s:hidden name="id" value="%{id}"/>
                                            <button type="submit" class="btn btn-sm btn-warning" title="Modificar">
                                                <i class="bi bi-pencil-square"></i>
                                            </button>
                                        </s:form>

                                        <s:form action="eliminarPedido" method="post" style="margin:0;">
                                            <s:hidden name="id" value="%{id}"/>
                                            <button type="submit" class="btn btn-sm btn-danger" title="Eliminar"
                                                    onclick="return confirm('¿Está seguro de eliminar este pedido?');">
                                                <i class="bi bi-trash-fill"></i>
                                            </button>
                                        </s:form>
                                    </div>
                                </td>
                            </tr>
                        </s:iterator>
                    </tbody>
                </table>
            </div>
        </div>

        <!-- Bootstrap Icons & JS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet" />
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
