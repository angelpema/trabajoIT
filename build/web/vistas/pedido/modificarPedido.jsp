<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Modificar Pedido</title>
    </head>
    <body>

        <h1>Modificar Pedido</h1>

        <s:form action="modificarPedidoGuardar" method="post">
            <s:hidden name="pedido.id" value="%{pedido.id}" />

            <s:select name="pedido.estado"
                      label="Estado"
                      list="{'pendiente', 'preparando', 'completado', 'cancelado'}"
                      required="true"
                      value="%{pedido.estado}"/>

            <s:submit value="Guardar" />
        </s:form>

        <s:form action="listarPedido">
            <s:submit value="Volver" />
        </s:form>

    </body>
</html>
