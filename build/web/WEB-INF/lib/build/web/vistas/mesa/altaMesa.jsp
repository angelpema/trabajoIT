<%-- 
    Document   : altaMesa
    Created on : 05-jun-2025, 12:39:27
    Author     : angel_pe_ma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alta Mesa</title>
    </head>
        <body>

        <h1>Alta Mesa</h1>

        <s:form action="altaMesa" method="post">

            <s:textfield name="ubicacion"
                         label="Ubicacion"
                         required="true" />

            <s:textfield name="capacidad"
                         label="Capacidad"
                         required="true" />

            <s:submit value="Guardar"/>
        </s:form>
        
        <s:form action="listarMesa">
            <s:submit value="Volver"/>
        </s:form>
    </body>
</html>
