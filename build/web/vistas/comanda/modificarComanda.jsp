<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Modificar Comanda</title>
</head>
<body>

    <h1>Modificar Comanda</h1>

    <s:form action="modificarComandaGuardar" method="post">
        <s:hidden name="comanda.id" value="%{comanda.id}" />

        <s:select name="comanda.pedido.id"
                  label="Pedido"
                  list="listaPedido"
                  listKey="id"
                  listValue="id"
                  required="true"
                  value="%{comanda.pedido.id}" />

        <s:select name="comanda.plato.id"
                  label="Plato"
                  list="listaPlato"
                  listKey="id"
                  listValue="nombre"
                  required="true"
                  value="%{comanda.plato.id}" />

        <s:textfield name="comanda.cantidad"
                     label="Cantidad"
                     type="number"
                     min="1"
                     required="true"
                     value="%{comanda.cantidad}" />

        <s:textfield name="comanda.notas"
                     label="Notas"
                     value="%{comanda.notas}" />

        <s:submit value="Guardar" />
    </s:form>

    <s:form action="listarComanda">
        <s:submit value="Volver" />
    </s:form>

</body>
</html>
