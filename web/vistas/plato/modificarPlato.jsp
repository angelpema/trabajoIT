<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Modificar Plato</title>
</head>
<body>

    <h1>Modificar Plato</h1>

    <s:form action="modificarPlatoGuardar" method="post">

        <s:hidden name="plato.id" value="%{plato.id}"/>

        <s:textfield name="plato.nombre"
                     label="Nombre"
                     required="true"
                     value="%{plato.nombre}"/>

        <s:textfield name="plato.descripcion"
                     label="Descripción"
                     required="true"
                     value="%{plato.descripcion}"/>

        <s:textfield name="plato.precio"
                     label="Precio"
                     required="true"
                     value="%{plato.precio}"/>

        <s:select name="plato.categoria.id"
                  label="Categoría"
                  list="listaCategoria"
                  listKey="id"
                  listValue="nombre"
                  required="true"
                  value="%{plato.categoria.id}"/>

        <s:checkbox name="plato.disponible"
                    label="Disponible"
                    value="%{plato.disponible}"/>

        <s:submit value="Guardar"/>
    </s:form>

    <s:form action="listarPlato">
        <s:submit value="Volver"/>
    </s:form>

</body>
</html>
