<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Seleccionar Mesa</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet"/>
    </head>
    <body class="bg-light">
        <div class="container mt-4">
            <div class="mb-3">
                <s:form action="vistaIndex" method="post">
                    <button class="btn btn-outline-secondary">
                        <i class="bi bi-arrow-left"></i> Volver al Panel Inicial
                    </button>
                </s:form>
            </div>

            <h2 class="mb-4"><i class="bi bi-grid-3x3-gap"></i> Seleccionar Mesa</h2>

            <!-- Mesas en Interior -->
            <h4 class="mt-4">Mesas en Interior</h4>
            <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-6 g-3 mb-5">
                <s:iterator value="listaMesaInterior" var="mesa">
                    <div class="col">
                        <s:form action="tpvMesaSeleccionada" method="post">
                            <s:hidden name="mesaID" value="%{#mesa.id}" />
                            <button type="submit" class="btn w-100 p-0">
                                <div class="card text-center">
                                    <div class="card-body">
                                        <h5 class="card-title">Mesa <s:property value="#mesa.id" /></h5>
                                        <p class="card-text">
                                            <i class="bi bi-geo-alt"></i> <s:property value="#mesa.ubicacion" /><br/>
                                            <i class="bi bi-people-fill"></i> Capacidad: <s:property value="#mesa.capacidad" /><br/>
                                            Estado: <s:property value="#mesa.estado" />
                                        </p>
                                    </div>
                                </div>
                            </button>
                        </s:form>
                    </div>
                </s:iterator>
            </div>

            <!-- Mesas en Terraza -->
            <h4 class="mt-4">Mesas en Terraza</h4>
            <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-6 g-3">
                <s:iterator value="listaMesaTerraza" var="mesa">
                    <div class="col">
                        <s:form action="tpvMesaSeleccionada" method="post">
                            <s:hidden name="mesaID" value="%{#mesa.id}" />
                            <button type="submit" class="btn w-100 p-0">
                                <div class="card text-center">
                                    <div class="card-body">
                                        <h5 class="card-title">Mesa <s:property value="#mesa.id" /></h5>
                                        <p class="card-text">
                                            <i class="bi bi-geo-alt"></i> <s:property value="#mesa.ubicacion" /><br/>
                                            <i class="bi bi-people-fill"></i> Capacidad: <s:property value="#mesa.capacidad" /><br/>
                                            Estado: <s:property value="#mesa.estado" />
                                        </p>
                                    </div>
                                </div>
                            </button>
                        </s:form>
                    </div>
                </s:iterator>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
