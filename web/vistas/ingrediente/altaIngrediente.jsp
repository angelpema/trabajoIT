<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alta Ingrediente</title>
    </head>
    <body>

        <h1>Alta Ingrediente</h1>

        <s:form action="altaIngrediente" method="post">

            <s:textfield name="nombre"
                         label="Nombre"
                         required="true" />
            
            <s:textfield name="stock"
                         label="Stock"
                         required="true" />

            <s:textfield name="unidad"
                         label="Unidad"
                         required="true" />

            <s:textfield name="umbralAlerta"
                         label="Umbral De Alerta"
                         required="true" />

            <s:submit value="Guardar"/>
        </s:form>
        
        <s:form action="listarIngrediente">
            <s:submit value="Volver"/>
        </s:form>
    </body>
</html>
