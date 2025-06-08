<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>Modificar ingrediente a plato</title>
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet" />
    </head>
    <body class="bg-light">
        <div class="container mt-5">
            <div class="row justify-content-center">
                <div class="col-md-6 col-lg-5">
                    <div class="card shadow">
                        <div class="card-header bg-primary text-white">
                            <h3 class="card-title mb-0">
                                <i class="bi bi-ui-checks-grid"></i> Modificar ingrediente a plato
                            </h3>
                        </div>
                        <div class="card-body">

                            <s:form action="listarPlatoIngrediente" method="post" style="margin:0;">
                                <button type="submit" class="btn btn-secondary mb-3">
                                    <i class="bi bi-arrow-left-circle me-2"></i> Volver a Ingredientes de Plato
                                </button>
                            </s:form>

                            <br><br>

                            <s:form action="modificarPlatoIngredienteGuardar" method="post" theme="simple">

                                <s:hidden name="platoIngrediente.id" value="%{platoIngrediente.id}" />

                                <div class="mb-3">
                                    <label for="plato" class="form-label">Plato</label>
                                    <s:select name="platoIngrediente.plato.id" id="plato" cssClass="form-select"
                                              list="listaPlato" listKey="id" listValue="nombre"
                                              required="true" value="%{platoIngrediente.plato.id}" />
                                </div>

                                <div class="mb-3">
                                    <label for="ingrediente" class="form-label">Ingrediente</label>
                                    <s:select name="platoIngrediente.ingrediente.id" id="ingrediente" cssClass="form-select"
                                              list="listaIngrediente" listKey="id" listValue="nombre"
                                              required="true" value="%{platoIngrediente.ingrediente.id}" />
                                </div>

                                <div class="mb-3">
                                    <label for="cantidad" class="form-label">Cantidad</label>
                                    <s:textfield name="platoIngrediente.cantidad" id="cantidad" cssClass="form-control"
                                                 type="number" min="0" step="0.1" required="true"
                                                 value="%{platoIngrediente.cantidad}" />
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
