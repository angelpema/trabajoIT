<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Alta Alerta</title>
</head>
<body>

    <h1>Alta Alerta</h1>

    <s:form action="altaAlerta" method="post">

        <s:select name="ingrediente.id"
                  label="Ingrediente"
                  list="listaIngrediente"
                  listKey="id"
                  listValue="nombre"
                  required="true" />

        <s:textfield name="mensaje"
                     label="Mensaje"
                     required="true" />

        <s:submit value="Guardar" />
    </s:form>

    <s:form action="listarAlerta">
        <s:submit value="Volver" />
    </s:form>

</body>
</html>
