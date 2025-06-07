<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alta Comanda</title>
    </head>
    <body>

        <h1>Alta Comanda</h1>

        <s:form action="altaComanda" method="post">

            <s:select name="pedido.id"
                      label="Pedido"
                      list="listaPedido"
                      listKey="id"
                      listValue="id"
                      required="true"/>

            <s:select name="plato.id"
                      label="Plato"
                      list="listaPlato"
                      listKey="id"
                      listValue="nombre"
                      required="true"/>

            <s:textfield name="cantidad" 
                         label="Cantidad" 
                         type="number" 
                         min="1" 
                         required="true"/>

            <s:textfield name="notas" 
                         label="Notas (opcional)"/>

            <s:submit value="Guardar"/>
        </s:form>

        <s:form action="listarComanda">
            <s:submit value="Volver"/>
        </s:form>

    </body>
</html>
