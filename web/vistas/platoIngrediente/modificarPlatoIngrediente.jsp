<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Modificar ingrediente a plato</title>
</head>
<body>

    <h1>Modificar ingrediente a plato</h1>

    <s:form action="modificarPlatoIngredienteGuardar" method="post">
        <s:hidden name="platoIngrediente.id" value="%{platoIngrediente.id}" />

        <s:select name="platoIngrediente.plato.id"
                  label="Plato"
                  list="listaPlato"
                  listKey="id"
                  listValue="nombre"
                  required="true"
                  value="%{platoIngrediente.plato.id}" />

        <s:select name="platoIngrediente.ingrediente.id"
                  label="Ingrediente"
                  list="listaIngrediente"
                  listKey="id"
                  listValue="nombre"
                  required="true"
                  value="%{platoIngrediente.ingrediente.id}" />

        <s:textfield name="platoIngrediente.cantidad"
                     label="Cantidad"
                     required="true"
                     type="number"
                     min="0"
                     step="0.1"
                     value="%{platoIngrediente.cantidad}" />

        <s:submit value="Guardar" />
    </s:form>

    <s:form action="listarPlatoIngrediente">
        <s:submit value="Volver" />
    </s:form>

</body>
</html>
