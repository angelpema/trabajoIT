<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Alta Plato</title>
    </head>
    <body>
        <h1>Alta Plato</h1>

        <s:form action="altaPlato" method="post">

            <s:textfield name="nombre" 
                         label="Nombre" 
                         required="true"/>

            <s:textfield name="descripcion" 
                         label="Descripción" 
                         required="true"/>

            <s:textfield name="precio" 
                         label="Precio" 
                         required="true"/>

            <s:select name="categoria.id" 
                      label="Categoría"
                      list="listaCategoria" 
                      listKey="id" 
                      listValue="nombre"
                      required="true"/>

            <s:checkbox name="disponible" label="Disponible"/>

            <s:submit value="Guardar"/>
        </s:form>

        <s:form action="listarPlato">
            <s:submit value="Volver"/>
        </s:form>
    </body>
</html>
