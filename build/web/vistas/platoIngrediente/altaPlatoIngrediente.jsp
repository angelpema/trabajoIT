<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Añadir ingrediente a plato</title>
</head>
<body>

    <h1>Añadir ingrediente a plato</h1>

    <s:form action="altaPlatoIngrediente" method="post">

        <s:select name="plato.id"
                  label="Plato"
                  list="listaPlato"
                  listKey="id"
                  listValue="nombre"
                  required="true" />

        <s:select name="ingrediente.id"
                  label="Ingrediente"
                  list="listaIngrediente"
                  listKey="id"
                  listValue="nombre"
                  required="true" />

        <s:textfield name="cantidad"
                     label="Cantidad"
                     required="true"
                     type="number"
                     min="0"
                     step="0.1" />

        <s:submit value="Guardar" />
    </s:form>

    <s:form action="listarPlatoIngrediente">
        <s:submit value="Volver" />
    </s:form>

</body>
</html>
