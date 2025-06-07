<%-- 
    Document   : mesa
    Created on : 05-jun-2025, 12:35:51
    Author     : angel_pe_ma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mesas</title>
    </head>
    <body>
        <h1>Mesas</h1>

        <s:form action="altaMesa">
            <s:submit value="Alta Mesa"/>
        </s:form>

        <table border=1 cellspacing=1 cellpadding=2>
            <tr>
                <th>Id</th>
                <th>Ubicacion</th>
                <th>Capacidad</th>
                <th>Estado</th>
                <th>Acciones</th>
            </tr>
            <s:iterator value = "listaMesa">
                <tr>
                    <td><s:property value = "id" /></td>
                    <td><s:property value = "Ubicacion" /></td>
                    <td><s:property value = "Capacidad" /></td>
                    <td><s:property value = "Estado" /></td>
                    <td>
                        <s:form action="eliminarMesa" method="post">
                            <s:hidden name="id" value="%{id}"/>
                            <s:submit value="Eliminar" onclick="return confirm('¿Está seguro de eliminar esta mesa?');"/>
                        </s:form>
                        <s:form action="modificarMesa" method="post">
                            <s:hidden name="id" value="%{id}"/>
                            <s:submit value="Modificar"/>
                        </s:form>
                    </td>
                </tr>
            </s:iterator>
        </table>
    </body>
</html>
