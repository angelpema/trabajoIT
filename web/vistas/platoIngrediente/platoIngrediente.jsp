<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Platos e Ingredientes</title>
</head>
<body>

    <h1>Platos - Ingredientes</h1>

    <s:form action="altaPlatoIngrediente">
        <s:submit value="Añadir ingrediente a plato"/>
    </s:form>

    <table border="1" cellpadding="5">
        <tr>
            <th>ID</th>
            <th>Plato</th>
            <th>Ingrediente</th>
            <th>Cantidad</th>
            <th>Acciones</th>
        </tr>

        <s:iterator value="listaPlatoIngrediente">
            <tr>
                <td><s:property value="id" /></td>
                <td><s:property value="plato.nombre" /></td>
                <td><s:property value="ingrediente.nombre" /></td>
                <td><s:property value="cantidad" /></td>
                <td>
                    <s:form action="eliminarPlatoIngrediente" method="post">
                        <s:hidden name="id" value="%{id}" />
                        <s:submit value="Eliminar" onclick="return confirm('¿Seguro que desea eliminar este registro?');" />
                    </s:form>
                    <s:form action="modificarPlatoIngrediente" method="post">
                        <s:hidden name="id" value="%{id}" />
                        <s:submit value="Modificar" />
                    </s:form>
                </td>
            </tr>
        </s:iterator>
    </table>

</body>
</html>
