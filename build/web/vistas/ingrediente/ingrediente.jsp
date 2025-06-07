
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ingredientes</title>
    </head>
    <body>
        <h1>Ingredientes</h1>
        
        <s:form action="altaIngrediente">
            <s:submit value="Alta Ingrediente"/>
        </s:form>

        <table border=1 cellspacing=1 cellpadding=2>
            <tr>
                <th>Id</th>
                <th>Nombre</th>
                <th>Stock</th>
                <th>Unidad</th>
                <th>Umbral de Alerta</th>
                <th>Acciones</th>
            </tr>
            <s:iterator value = "listaIngrediente">
                <tr>
                    <td><s:property value = "id" /></td>
                    <td><s:property value = "nombre" /></td>
                    <td><s:property value = "stock" /></td>
                    <td><s:property value = "unidad" /></td>
                    <td><s:property value = "umbralAlerta" /></td>
                    <td>
                        <s:form action="eliminarIngrediente" method="post">
                            <s:hidden name="id" value="%{id}"/>
                            <s:submit value="Eliminar" onclick="return confirm('¿Está seguro de eliminar este ingrediente?');"/>
                        </s:form>
                        <s:form action="modificarIngrediente" method="post">
                            <s:hidden name="id" value="%{id}"/>
                            <s:submit value="Modificar"/>
                        </s:form>
                    </td>
                </tr>
            </s:iterator>
        </table>
    </body>
</html>
