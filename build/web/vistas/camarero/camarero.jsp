
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultados</title>
    </head>
    <body>
        <h1>Camareros</h1>
        
        <s:form action="altaCamarero">
            <s:submit value="Alta Camarero"/>
        </s:form>

        <table border=1 cellspacing=1 cellpadding=2>
            <tr>
                <th>Id</th>
                <th>Dni</th>
                <th>Nombre</th>
                <th>Apellido</th>
                <th>Turno</th>
                <th colspan="2">Acciones</th>
            </tr>
            <s:iterator value = "listaCamarero">
                <tr>
                    <td><s:property value = "id" /></td>
                    <td><s:property value = "dni" /></td>
                    <td><s:property value = "nombre" /></td>
                    <td><s:property value = "apellidos" /></td>
                    <td><s:property value = "turno" /></td>
                    <td>
                        <s:form action="eliminarCamarero" method="post">
                            <s:hidden name="id" value="%{id}"/>
                            <s:submit value="Eliminar" onclick="return confirm('¿Está seguro de eliminar este camarero?');"/>
                        </s:form>
                        <s:form action="modificarCamarero" method="post">
                            <s:hidden name="id" value="%{id}"/>
                            <s:submit value="Modificar"/>
                        </s:form>
                    </td>
                </tr>
            </s:iterator>
        </table>
    </body>
</html>
