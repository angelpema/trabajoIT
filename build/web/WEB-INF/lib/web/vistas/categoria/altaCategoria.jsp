<%-- 
    Document   : altaCategoria
    Created on : 05-jun-2025, 12:07:04
    Author     : angel_pe_ma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alta Categoria</title>
    </head>
    <body>

        <h1>Alta Categoria</h1>

        <s:form action="altaCategoria" method="post">

            <s:textfield name="nombre"
                         label="Nombre"
                         required="true" />

            <s:submit value="Guardar"/>
        </s:form>

        <s:form action="listarCategoria">
            <s:submit value="Volver"/>
        </s:form>
    </body>
</html>
