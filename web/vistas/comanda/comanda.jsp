<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Comandas</title>
    </head>
    <body>

        <h1>Comandas</h1>

        <s:form action="altaComanda">
            <s:submit value="Nueva Comanda"/>
        </s:form>

        <table border="1" cellspacing="1" cellpadding="2">
            <tr>
                <th>ID</th>
                <th>ID Pedido</th>
                <th>Plato</th>
                <th>Cantidad</th>
                <th>Notas</th>
                <th>Acciones</th>
            </tr>

            <s:iterator value="listaComanda">
                <tr>
                    <td><s:property value="id"/></td>
                    <td><s:property value="pedido.id"/></td>
                    <td><s:property value="plato.nombre"/></td>
                    <td><s:property value="cantidad"/></td>
                    <td><s:property value="notas"/></td>
                    <td>
                        <s:form action="eliminarComanda" method="post">
                            <s:hidden name="id" value="%{id}"/>
                            <s:submit value="Eliminar" onclick="return confirm('¿Está seguro de eliminar esta comanda?');"/>
                        </s:form>
                        <s:form action="modificarComanda" method="post">
                            <s:hidden name="id" value="%{id}"/>
                            <s:submit value="Modificar"/>
                        </s:form>
                    </td>
                </tr>
            </s:iterator>
        </table>

    </body>
</html>
