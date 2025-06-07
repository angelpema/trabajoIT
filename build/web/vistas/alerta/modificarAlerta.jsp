<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Modificar Alerta</title>
</head>
<body>

    <h1>Modificar Alerta</h1>

    <s:form action="modificarAlertaGuardar" method="post">
        <s:hidden name="alerta.id" value="%{alerta.id}" />

        <s:select name="alerta.ingrediente.id"
                  label="Ingrediente"
                  list="listaIngrediente"
                  listKey="id"
                  listValue="nombre"
                  required="true"
                  value="%{alerta.ingrediente.id}" />

        <s:textfield name="alerta.mensaje"
                     label="Mensaje"
                     required="true"
                     value="%{alerta.mensaje}" />

        <s:checkbox name="alerta.resuelta"
                    label="¿Resuelta?"
                    fieldValue="true"
                    value="%{alerta.resuelta}" />

        <s:submit value="Guardar" />
    </s:form>

    <s:form action="listarAlerta">
        <s:submit value="Volver" />
    </s:form>

</body>
</html>
