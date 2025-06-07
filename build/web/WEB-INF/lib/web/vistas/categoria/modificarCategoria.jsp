<%-- 
    Document   : modificarCategoria
    Created on : 05-jun-2025, 12:29:32
    Author     : angel_pe_ma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Categoria</title>
    </head>
    <body>

        <h1>Modificar Categoria</h1>

        <s:form action="modificarCategoriaGuardar" method="post">

            <s:hidden name="categoria.id" value="%{categoria.id}"/>
            <s:textfield name="categoria.nombre"
                         label="Nombre"
                         required="true" 
                         value="%{categoria.nombre}"/>

            <s:submit value="Guardar"/>
        </s:form>
        
        <s:form action="listarCategoria">
            <s:submit value="Volver"/>
        </s:form>
    </body>
</html>
