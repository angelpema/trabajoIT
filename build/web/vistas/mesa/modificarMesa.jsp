<%-- 
    Document   : modificarMesa
    Created on : 05-jun-2025, 12:42:17
    Author     : angel_pe_ma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Mesa</title>
    </head>
    <body>

        <h1>Modificar Mesa</h1>

        <s:form action="modificarMesaGuardar" method="post">

            <s:hidden name="mesa.id" value="%{mesa.id}"/>

            <s:textfield name="mesa.ubicacion"
                         label="Ubicacion"
                         required="true" 
                         value="%{mesa.ubicacion}"/>

            <s:textfield name="mesa.capacidad"
                         label="Capacidad"
                         required="true" 
                         value="%{mesa.capacidad}"/>

            <s:select name="mesa.estado"
                      label="Estado"
                      list="{'libre', 'ocupada', 'reservada'}"
                      required="true" 
                      value="%{mesa.estado}"/>

            <s:submit value="Guardar"/>
        </s:form>
        
        <s:form action="listarMesa">
            <s:submit value="Volver"/>
        </s:form>
    </body>
</html>
