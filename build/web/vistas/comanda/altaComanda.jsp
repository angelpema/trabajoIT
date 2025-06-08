<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alta Comanda</title>
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet" />
    </head>
    <body class="bg-light">
        <div class="container mt-5">
            <div class="row justify-content-center">
                <div class="col-md-8 col-lg-6">
                    <div class="card shadow">
                        <div class="card-header bg-primary text-white">
                            <h3 class="card-title mb-0">
                                <i class="bi bi-journal-plus"></i> Alta de Comanda
                            </h3>
                        </div>
                        <div class="card-body">

                            <s:form action="listarComanda" method="post" style="margin:0;">
                                <button type="submit" class="btn btn-secondary">
                                    <i class="bi bi-arrow-left-circle me-2"></i> Volver a Comandas
                                </button>
                            </s:form>

                            <br><br>

                            <s:form action="altaComanda" method="post" theme="simple">
                                <div class="mb-3">
                                    <label for="pedidoId" class="form-label">Pedido</label>
                                    <s:select name="pedido.id"
                                              id="pedidoId"
                                              cssClass="form-select"
                                              list="listaPedido"
                                              listKey="id"
                                              listValue="id"
                                              required="true" />
                                </div>

                                <div class="mb-3">
                                    <label for="platoId" class="form-label">Plato</label>
                                    <s:select name="plato.id"
                                              id="platoId"
                                              cssClass="form-select"
                                              list="listaPlato"
                                              listKey="id"
                                              listValue="nombre"
                                              required="true" />
                                </div>

                                <div class="mb-3">
                                    <label for="cantidad" class="form-label">Cantidad</label>
                                    <s:textfield name="cantidad"
                                                 id="cantidad"
                                                 cssClass="form-control"
                                                 type="number"
                                                 min="1"
                                                 required="true" />
                                </div>

                                <div class="mb-4">
                                    <label for="notas" class="form-label">Notas (opcional)</label>
                                    <s:textfield name="notas"
                                                 id="notas"
                                                 cssClass="form-control" />
                                </div>

                                <div class="d-grid gap-2 d-md-flex justify-content-md-end">
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
