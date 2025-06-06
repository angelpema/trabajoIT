<%-- 
    Document   : categoria
    Created on : 05-jun-2025, 11:46:24
    Author     : angel_pe_ma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Plato</title>
    </head>
    <body>
        <h1>Plato</h1>
        
        <s:form action="altaPlato">
            <s:submit value="Alta Plato"/>
        </s:form>

        <table border=1 cellspacing=1 cellpadding=2>
            <tr>
                <th>Id</th>
                <th>Nombre</th>
                <th>Descripcion</th>
                <th>Precio</th>
                <th>Categoria</th>
                <th>Disponible</th>
                <th colspan="2">Acciones</th>
            </tr>
            <s:iterator value = "listaPlato">
                <tr>
                    <td><s:property value = "id" /></td>
                    <td><s:property value = "nombre" /></td>
                    <td><s:property value = "descripcion" /></td>
                    <td><s:property value = "precio" /></td>
                    <td><s:property value = "categoria.nombre" /></td>
                    <td><s:property value = "disponible" /></td>
                    <td>
                        <s:form action="eliminarPlato" method="post">
                            <s:hidden name="id" value="%{id}"/>
                            <s:submit value="Eliminar" onclick="return confirm('¿Está seguro de eliminar este plato?');"/>
                        </s:form>
                        <s:form action="modificarPlato" method="post">
                            <s:hidden name="id" value="%{id}"/>
                            <s:submit value="Modificar"/>
                        </s:form>
                    </td>
                </tr>
            </s:iterator>
        </table>
    </body>
</html>
