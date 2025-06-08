<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Resumen del Pedido</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet"/>
    </head>
    <body class="bg-light">

        <div class="container mt-5">
            <div class="card shadow-sm">
                <div class="card-header bg-primary text-white text-center">
                    <h1 class="mb-0 fs-2">Pedido de la mesa <s:property value="mesa.id"/></h1>
                </div>
                <div class="card-body text-center">
                    <h2 class="card-title fs-3 mb-3">Cantidad total a pagar:</h2>
                    <h1 class="text-success fs-1">$<s:property value="precio"/></h1>

                    <s:form action="tpvMesas" method="post" cssClass="mt-4">
                        <button type="submit" class="btn btn-secondary btn-lg mt-3">
                            <i class="bi bi-arrow-left"></i> Volver a mesas
                        </button>
                    </s:form>
                </div>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
