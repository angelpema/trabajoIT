<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>Modificar Plato</title>
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
                                <i class="bi bi-egg-fried"></i> Modificar Plato
                            </h3>
                        </div>
                        <div class="card-body">

                            <s:form action="listarPlato" method="post" style="margin:0;">
                                <button type="submit" class="btn btn-secondary mb-3">
                                    <i class="bi bi-arrow-left-circle me-2"></i> Volver a Platos
                                </button>
                            </s:form>

                            <br><br>

                            <s:form action="modificarPlatoGuardar" method="post" theme="simple">

                                <s:hidden name="plato.id" value="%{plato.id}" />

                                <div class="mb-3">
                                    <label for="nombre" class="form-label">Nombre</label>
                                    <s:textfield name="plato.nombre" id="nombre" cssClass="form-control" 
                                                 required="true" value="%{plato.nombre}" />
                                </div>

                                <div class="mb-3">
                                    <label for="descripcion" class="form-label">Descripción</label>
                                    <s:textfield name="plato.descripcion" id="descripcion" cssClass="form-control" 
                                                 required="true" value="%{plato.descripcion}" />
                                </div>

                                <div class="mb-3">
                                    <label for="precio" class="form-label">Precio</label>
                                    <s:textfield name="plato.precio" id="precio" cssClass="form-control" 
                                                 required="true" value="%{plato.precio}" />
                                </div>

                                <div class="mb-3">
                                    <label for="categoria" class="form-label">Categoría</label>
                                    <s:select name="plato.categoria.id" id="categoria" cssClass="form-select"
                                              list="listaCategoria" listKey="id" listValue="nombre"
                                              required="true" value="%{plato.categoria.id}" />
                                </div>

                                <div class="form-check mb-3">
                                    <s:checkbox name="plato.disponible" id="disponible" cssClass="form-check-input"
                                                value="%{plato.disponible}" />
                                    <label class="form-check-label" for="disponible">Disponible</label>
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
