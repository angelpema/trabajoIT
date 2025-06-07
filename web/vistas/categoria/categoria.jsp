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
        <title>Categoria</title>
    </head>
    <body>
        <h1>Categoria</h1>
        
        <s:form action="altaCategoria">
            <s:submit value="Alta Categoria"/>
        </s:form>

        <table border=1 cellspacing=1 cellpadding=2>
            <tr>
                <th>Id</th>
                <th>Nombre</th>
                <th>Acciones</th>
            </tr>
            <s:iterator value = "listaCategoria">
                <tr>
                    <td><s:property value = "id" /></td>
                    <td><s:property value = "nombre" /></td>
                    <td>
                        <s:form action="eliminarCategoria" method="post">
                            <s:hidden name="id" value="%{id}"/>
                            <s:submit value="Eliminar" onclick="return confirm('¿Está seguro de eliminar esta categoria?');"/>
                        </s:form>
                        <s:form action="modificarCategoria" method="post">
                            <s:hidden name="id" value="%{id}"/>
                            <s:submit value="Modificar"/>
                        </s:form>
                    </td>
                </tr>
            </s:iterator>
        </table>
    </body>
</html>
