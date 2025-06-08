<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>Modificar Mesa</title>
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
                                <i class="bi bi-table"></i> Modificar Mesa
                            </h3>
                        </div>
                        <div class="card-body">

                            <s:form action="listarMesa" method="post" style="margin:0;">
                                <button type="submit" class="btn btn-secondary mb-3">
                                    <i class="bi bi-arrow-left-circle me-2"></i> Volver a Mesas
                                </button>
                            </s:form>

                            <br><br>

                            <s:form action="modificarMesaGuardar" method="post" theme="simple">

                                <s:hidden name="mesa.id" value="%{mesa.id}" />

                                <div class="mb-3">
                                    <label for="ubicacion" class="form-label">Ubicación</label>
                                    <s:textfield name="mesa.ubicacion" id="ubicacion" cssClass="form-control" 
                                                 required="true" value="%{mesa.ubicacion}" />
                                </div>

                                <div class="mb-3">
                                    <label for="capacidad" class="form-label">Capacidad</label>
                                    <s:textfield name="mesa.capacidad" id="capacidad" cssClass="form-control" 
                                                 required="true" value="%{mesa.capacidad}" />
                                </div>

                                <div class="mb-3">
                                    <label for="estado" class="form-label">Estado</label>
                                    <s:select name="mesa.estado" id="estado" cssClass="form-select" 
                                              list="{'libre', 'ocupada', 'reservada'}" required="true" value="%{mesa.estado}" />
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
