<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Pedidos</title>
</head>
<body>

    <h1>Pedidos</h1>

    <s:form action="altaPedido">
        <s:submit value="Nuevo Pedido"/>
    </s:form>

    <table border="1" cellspacing="1" cellpadding="2">
        <tr>
            <th>ID</th>
            <th>Mesa</th>
            <th>Camarero</th>
            <th>Fecha y Hora</th>
            <th>Estado</th>
            <th>Acciones</th>
        </tr>

        <s:iterator value="listaPedido">
            <tr>
                <td><s:property value="id"/></td>
                <td><s:property value="mesa.id"/></td>
                <td><s:property value="camarero.dni"/></td>
                <td><s:property value="fechaHora"/></td>
                <td><s:property value="estado"/></td>
                <td>
                    <s:form action="eliminarPedido" method="post">
                        <s:hidden name="id" value="%{id}"/>
                        <s:submit value="Eliminar" onclick="return confirm('¿Está seguro de eliminar este pedido?');"/>
                    </s:form>
                    <s:form action="modificarPedido" method="post">
                        <s:hidden name="id" value="%{id}"/>
                        <s:submit value="Modificar"/>
                    </s:form>
                </td>
            </tr>
        </s:iterator>
    </table>

</body>
</html>
