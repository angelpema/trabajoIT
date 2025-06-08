<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Modificar Camarero</title>
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
                            <i class="bi bi-person-lines-fill"></i> Modificar Camarero
                        </h3>
                    </div>
                    <div class="card-body">

                        <s:form action="listarCamarero" method="post" style="margin:0;">
                            <button type="submit" class="btn btn-secondary mb-3">
                                <i class="bi bi-arrow-left-circle me-2"></i> Volver a Camareros
                            </button>
                        </s:form>
                        
                        <br><br>

                        <s:form action="modificarCamareroGuardar" method="post" theme="simple">

                            <s:hidden name="camarero.id" value="%{camarero.id}" />
                            <s:hidden name="camarero.dni" value="%{camarero.dni}" />

                            <div class="mb-3">
                                <label for="nombre" class="form-label">Nombre</label>
                                <s:textfield name="camarero.nombre" id="nombre" cssClass="form-control"
                                             required="true" value="%{camarero.nombre}" />
                            </div>

                            <div class="mb-3">
                                <label for="apellidos" class="form-label">Apellidos</label>
                                <s:textfield name="camarero.apellidos" id="apellidos" cssClass="form-control"
                                             required="true" value="%{camarero.apellidos}" />
                            </div>

                            <div class="mb-4">
                                <label for="turno" class="form-label">Turno</label>
                                <s:select name="camarero.turno" id="turno" cssClass="form-select"
                                          list="{'Tarde', 'Noche'}" required="true" value="%{camarero.turno}" />
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
