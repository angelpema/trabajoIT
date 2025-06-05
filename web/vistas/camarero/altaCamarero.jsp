<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alta camarero</title>
    </head>
    <body>

        <h1>Alta Camarero</h1>

        <s:form action="altaCamarero" method="post">

            <s:textfield name="dni"
                         label="DNI"
                         required="true" />

            <s:textfield name="nombre"
                         label="Nombre"
                         required="true" />

            <s:textfield name="apellidos"
                         label="Apellidos"
                         required="true" />

            <s:select name="turno"
                      label="Turno"
                      list="{'Tarde', 'Noche'}"
                      required="true" />

            <s:submit value="Guardar"/>
        </s:form>
        
        <s:form action="listarCamarero">
            <s:submit value="Volver"/>
        </s:form>
    </body>
</html>
