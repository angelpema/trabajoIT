<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Alertas</title>
</head>
<body>

    <h1>Alertas</h1>

    <s:form action="altaAlerta">
        <s:submit value="Nueva Alerta"/>
    </s:form>

    <table border="1" cellspacing="1" cellpadding="2">
        <tr>
            <th>ID</th>
            <th>Ingrediente</th>
            <th>Mensaje</th>
            <th>Fecha</th>
            <th>Resuelta</th>
            <th>Acciones</th>
        </tr>

        <s:iterator value="listaAlerta">
            <tr>
                <td><s:property value="id"/></td>
                <td><s:property value="ingrediente.nombre"/></td>
                <td><s:property value="mensaje"/></td>
                <td><s:date name="fecha"/></td>
                <td><s:property value="resuelta"/></td>
                <td>
                    <s:form action="eliminarAlerta" method="post">
                        <s:hidden name="id" value="%{id}"/>
                        <s:submit value="Eliminar" onclick="return confirm('¿Está seguro de eliminar esta alerta?');"/>
                    </s:form>
                    <s:form action="modificarAlerta" method="post">
                        <s:hidden name="id" value="%{id}"/>
                        <s:submit value="Modificar"/>
                    </s:form>
                </td>
            </tr>
        </s:iterator>
    </table>

</body>
</html>
