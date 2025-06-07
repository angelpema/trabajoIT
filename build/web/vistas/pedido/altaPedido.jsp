<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Alta Pedido</title>
</head>
<body>

    <h1>Alta Pedido</h1>

    <s:form action="altaPedido" method="post">

        <s:select name="mesa.id"
                  label="Mesa"
                  list="listaMesa"
                  listKey="id"
                  listValue="id"
                  required="true"/>

        <s:select name="camarero.id"
                  label="Camarero"
                  list="listaCamarero"
                  listKey="id"
                  listValue="dni"
                  required="true"/>

        <s:submit value="Guardar"/>
    </s:form>

    <s:form action="listarPedido">
        <s:submit value="Volver"/>
    </s:form>

</body>
</html>
