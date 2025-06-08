<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alta Camarero</title>
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet" />
    </head>
    <body class="bg-light">
        <div class="container mt-5">
            <div class="row justify-content-center">
                <div class="col-md-8 col-lg-6">
                    <div class="card shadow">
                        <div class="card-header bg-primary text-white">
                            <h3 class="card-title mb-0">
                                <i class="bi bi-person-plus"></i> Alta de Camarero
                            </h3>
                        </div>
                        <div class="card-body">

                            <s:form action="listarCamarero" method="post" style="margin:0;">
                                <button type="submit" class="btn btn-secondary">
                                    <i class="bi bi-arrow-left-circle me-2"></i> Volver a Camareros
                                </button>
                            </s:form>

                            <br><br>

                            <s:form action="altaCamarero" method="post" theme="simple">
                                <div class="mb-3">
                                    <label for="dni" class="form-label">DNI</label>
                                    <s:textfield name="dni"
                                                 id="dni"
                                                 cssClass="form-control"
                                                 required="true" />
                                </div>

                                <div class="mb-3">
                                    <label for="nombre" class="form-label">Nombre</label>
                                    <s:textfield name="nombre"
                                                 id="nombre"
                                                 cssClass="form-control"
                                                 required="true" />
                                </div>

                                <div class="mb-3">
                                    <label for="apellidos" class="form-label">Apellidos</label>
                                    <s:textfield name="apellidos"
                                                 id="apellidos"
                                                 cssClass="form-control"
                                                 required="true" />
                                </div>

                                <div class="mb-4">
                                    <label for="turno" class="form-label">Turno</label>
                                    <s:select name="turno"
                                              id="turno"
                                              cssClass="form-select"
                                              list="{'Tarde','Noche'}"
                                              required="true" />
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
