<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>Modificar Pedido</title>
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet" />
    </head>
    <body class="bg-light">
        <div class="container mt-5">
            <div class="row justify-content-center">
                <div class="col-md-5 col-lg-4">
                    <div class="card shadow">
                        <div class="card-header bg-primary text-white">
                            <h3 class="card-title mb-0">
                                <i class="bi bi-card-checklist"></i> Modificar Pedido
                            </h3>
                        </div>
                        <div class="card-body">

                            <s:form action="listarPedido" method="post" style="margin:0;">
                                <button type="submit" class="btn btn-secondary mb-3">
                                    <i class="bi bi-arrow-left-circle me-2"></i> Volver a Pedidos
                                </button>
                            </s:form>

                            <br><br>

                            <s:form action="modificarPedidoGuardar" method="post" theme="simple">

                                <s:hidden name="pedido.id" value="%{pedido.id}" />

                                <div class="mb-3">
                                    <label for="estado" class="form-label">Estado</label>
                                    <s:select name="pedido.estado" id="estado" cssClass="form-select" 
                                              list="{'pendiente', 'preparando', 'completado', 'cancelado'}" 
                                              required="true" value="%{pedido.estado}" />
                                </div>

                                <div class="d-grid d-md-flex justify-content-md-end">
                                    <s:submit value="Guardar" cssClass="btn btn-primary me-md-2" />
                                </div>

                            </s:form>

                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Bootstrap JS Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
