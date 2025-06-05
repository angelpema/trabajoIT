<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Camarero</title>
    </head>
    <body>

        <h1>Modificar Camarero</h1>

        <s:form action="modificarCamareroGuardar" method="post">

            <s:hidden name="camarero.id" value="%{camarero.id}"/>

            <s:hidden name="camarero.dni" value="%{camarero.dni}"/>

            <s:textfield name="camarero.nombre"
                         label="Nombre"
                         required="true" 
                         value="%{camarero.nombre}"/>

            <s:textfield name="camarero.apellidos"
                         label="Apellidos"
                         required="true" 
                         value="%{camarero.apellidos}"/>

            <s:select name="camarero.turno"
                      label="Turno"
                      list="{'Tarde', 'Noche'}"
                      required="true" 
                      value="%{camarero.turno}"/>

            <s:submit value="Guardar"/>
        </s:form>
        
        <s:form action="listarCamarero">
            <s:submit value="Volver"/>
        </s:form>
    </body>
</html>
