# 🎓PROYECTO ANALÍTICA DE DATOS SQL -> POWERBI🎓

Pequeño proyecto de aprendizaje donde se utiliza SQL como herramienta de filtrado de datos y PowerBI como método de respuesta mediante dashboards a las diferentes preguntas planteadas.

## Objetivos del Proyecto
 
Responder preguntas clave de negocio como:

    1. ¿Cómo evolucionan las ventas y el beneficio a lo largo del tiempo?  
    2. ¿Qué mercados y regiones generan más ventas y rentabilidad?  
    3. ¿Cuáles son los productos más vendidos y los más rentables?  
    4. ¿Qué categorías y departamentos presentan mejor margen?  
    5. ¿Qué productos con alto volumen tienen bajo o negativo margen?  
    6. ¿Qué porcentaje de pedidos tiene riesgo de retraso?  
    7. ¿Qué modos de envío generan más retrasos?  
    8. ¿Qué regiones presentan más problemas logísticos?  
    9. ¿Qué segmentos de clientes generan más ingresos y beneficio?  
    10. ¿Quiénes son los clientes más rentables (Top N)?  
    11. ¿Existe relación entre retrasos y pérdida de beneficio?  
    12. ¿Dónde debería enfocarse la empresa para mejorar resultados?

## Herramientas Utilizadas
- Microsoft SQL Server Management Studio 18  
- Power BI  
- DAX  
- Power Query  

## Arquitectura de Datos (SQL Y Power Query)
    1. Importación del dataset CSV en SQL Server.  
    2. Selección y creación de una vista como método de filtrado de información.  
    3. Conectar la nueva vista de los datos (sql.) con PowerBI
    4. Utilizando Power Query, formatear los datos y añadir columnas necesarias.
    5. Por último, se crearon las métricas necesarias para ayudarnos a contestar las preguntas.

## Datos filtrados y preparación

Tras realizar una lectura y comprobación de los datos que disponía, filtré una serie de columnas las cuales, iban a ser esenciales para conestar las preguntas:

- Fechas (pedido y envío)  
- Ventas y beneficio  
- Producto, categoría y departamento  
- Cliente e identificadores  
- Mercado y región  
- Modo de envío y estado de entrega 

Para ello, utilicé la función CREATE OR ALTER VIEW y seleccione las columnas de arriba.

Una vez seleccionados e importados a Power Query, renombré las columnas, calculé totales y di formato a columnas como las fechas las cuales, tuve que transformar en texto VARCHAR por problemas de improtación del archivo plano en SQL.

Con los datos ya preparados, dividí las diferentes preguntas en secciones de Ventas, Logística y Clientes con el fin de facilitar la lectura.

### Dashboard de Ventas y Rentabilidad
- Ventas totales  
- Beneficio total  
- Margen promedio  
- Evolución temporal de ventas y beneficio  
- Ventas y beneficio por mercado  
- Productos más vendidos vs más rentables  
- Margen por categoría y departamento  

### Dashboard de Logística
- Pedidos totales  
- Pedidos con retraso  
- Porcentaje de pedidos con retraso  
- Pedidos tardíos por modo de envío  
- Pedidos tardíos por región  
- Beneficio promedio según días de retraso  

### Dashboard de Clientes
- Clientes únicos  
- Ventas totales  
- Beneficio total  
- Margen promedio  
- Ventas y beneficio por segmento  
- Margen por segmento  
- Top 10 clientes por beneficio  
- Bottom 10 clientes por beneficio 

## Principales conclusiones de los datos y respuestas a las preguntas.

- Las ventas y el beneficio se mantienen relativamente estables entre 2015 y 2017. En el caso de 2018 claramente el dataset no estaba completo o solo tomó un tiempo muy limitado del Q1. 
- LATAM y Europa concentran la mayor parte de ventas y beneficio.  
- Alto volumen de ventas no implica alta rentabilidad.  
- Existen productos con alto volumen y bajo margen.  
- El 57% de los pedidos presenta riesgo de retraso.  
- Standard Class genera el mayor volumen de retrasos.  
- First Class presenta el mayor porcentaje de retrasos.  
- El segmento Consumer lidera en volumen mientras que, el segmento Corporate en margen.  
- Un grupo reducido de clientes concentra gran parte del beneficio.  
- No se observa una relación fuerte entre retraso y beneficio promedio.

## INFORMACIÓN EXTRA

Para mantener una correcta estructura de lectura del proyecto, recomiendo abrir primero el archivo SQL seguido del archivo PBIX. Además, el datset presenta un peso demasiado elevado para poder subirlo a Github por lo que añado el enlace de Kaggle a continuación:

https://www.kaggle.com/datasets/saicharankomati/dataco-supply-chain-dataset

Como nota importante y final, el dataset mantiene valores extremos en columnas como por ejemplo el Beneficio por lo que, los resultados en algunas cuestiones pueden ser poco realistas.

Muchas gracias por haber leído hasta aquí.

Un saludo.

GPx-E
