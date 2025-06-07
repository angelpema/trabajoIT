<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Ingrediente</title>
    </head>
    <body>

        <h1>Modificar Ingrediente</h1>

        <s:form action="modificarIngredienteGuardar" method="post">

            <s:hidden name="ingrediente.id" value="%{ingrediente.id}"/>

            <s:textfield name="ingrediente.nombre"
                         label="Nombre"
                         required="true" 
                         value="%{ingrediente.nombre}"/>

            <s:textfield name="ingrediente.stock"
                         label="Stock"
                         required="true" 
                         value="%{ingrediente.stock}"/>

            <s:textfield name="ingrediente.unidad"
                         label="Unidad"
                         required="true" 
                         value="%{ingrediente.unidad}"/>

            <s:textfield name="ingrediente.umbralAlerta"
                         label="Umbral De Alerta"
                         required="true" 
                         value="%{ingrediente.umbralAlerta}"/>

            <s:submit value="Guardar"/>
        </s:form>
        
        <s:form action="listarIngrediente">
            <s:submit value="Volver"/>
        </s:form>
    </body>
</html>
