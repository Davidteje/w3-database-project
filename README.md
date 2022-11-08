# W3 Project - Building mySQL Data-base


![Image text](https://github.com/Davidteje/w3-database-project/blob/main/img/descarga%20(4).jpeg)



![Image text](https://github.com/Davidteje/w3-database-project/blob/main/img/pandas_python.png)
![Image text](https://github.com/Davidteje/w3-database-project/blob/main/img/sqlalchemy.jpeg)
![Image text](https://github.com/Davidteje/w3-database-project/blob/main/img/MySQLworkbench.jpeg)
![Image text](https://github.com/Davidteje/w3-database-project/blob/main/img/descarga.png)


TO DO's: 
1) Explore the data and write down what you have found, you can use: df.describe(), df["column"], etc.
2) Clean the data (you can get rid of columns that doesn't give information)
3) Build your databse
4) Write at least 10 queries including: join, groupby, orderby, where, subqueries….that you think will be useful to get interesting insights from the data.(SELECT* FROM TABLE_NAME doesn't count...)
Bonus: Get creative!!! Create totally new tables or enrich the csv files with new data (found on the internet or even made up) that makes your database more valuable.


PROCESO DE TRABAJO: 👨‍💻
1) LIMPIEZA DE DATA FRAMES: 🚛
- Exploración y limpieza de ficheros csv:
    - actor.csv:
        - Copia del df y dimensiones originales.
        - Info df
        - No hay nulos
        - No hay filas duplicadas. Se identifica una actriz repetida, pero con diferente 'actor_id': Susan Davis.
        - Se elimina la columna 'last_update' con un único valor repetido, no aporta info al df.
        - Se incluye una nueva columna 'complete_name' que concatena el nombre completo.
    - category.csv:
        - Copia del df y dimensiones originales.
        - Info df
        - No hay nulos
        - No hay filas duplicadas.
        - Se elimina la columna 'last_update' con un único valor repetido, no aporta info al df.
    - film.csv:
        - Copia del df y dimensiones originales.
        - Info df
        - No hay filas duplicadas.
        - Se identifica una columna con 100% nulos -> 'original_language_id' -> Se elimina.
        - Se elimina la columna 'last_update' con un único valor repetido, no aporta info al df.
    - inventory.csv:
        - Copia del df y dimensiones originales.
        - Info df
        - No hay nulos
        - No hay filas duplicadas.
        - Se elimina la columna 'last_update' con un único valor repetido, no aporta info al df.
    - language.csv:
        - Copia del df y dimensiones originales.
        - Info df
        - No hay nulos
        - No hay filas duplicadas.
        - Se elimina la columna 'last_update' con un único valor repetido, no aporta info al df.
    - rental.csv:
        - Copia del df y dimensiones originales.
        - Info df
        - No hay nulos
        - No hay filas duplicadas.
        - Se elimina la columna 'last_update' con un único valor repetido, no aporta info al df.
    - old_HDD.csv:
        - Copia del df y dimensiones originales.
        - Info df
        - No hay nulos
        - No hay filas duplicadas.
        - Se crea nueva columna 'film_id' relacionando los títulos con el 'film_id' de la tabla 'film'.
        - Se incluye una nueva columna 'complete_name' que concatena el nombre completo de los actores.
        - Se crea nueva columna 'actor_id' relacionando el complete_name de los actores con el 'actor_id' de la tabla 'film'.

- Conclusiones relevantes tras rvisión de columnas con mismos nombres en los diferentes df explorados: 👆
        - En df_inv hay 223 películas de las 1000 películas que hay en df_film.
        - En df_inv hay 1000 filas con números de inventory_id del 1 al 1000, mientras que en df_ren hay 1000 filas también, pero con números de inventory_id entre el 1 y el 4500 aprox. Sólo 212 inventory_id de df_inv se incluyen en df_ren.
        - En df_film hay 1000 filas con valores de film_id entre 1 y 1000, mientras que el df_old hay 614 film_id.
        - En df_act hay 200 actores, mientras que en df_old hay 39 actores.
        
- Exportación de los df limpios a csv.

2) CREACIÓN DE BBDD, IMPORTACIÓN DE DATOS Y QUERIES: 🛠
- Creación de BBDD proy_videoclub en Sql a través de SQLAlchemy y conexión a la misma.
- Importación de los csv limpios a sql a través de SQLAlchemy.
- Selección de primary keys y foreign keys -> Creación de relaciones entre las diferentes tablas a través de Workbench.

    ![Image text](https://github.com/Davidteje/w3-database-project/blob/main/img/Diagrama_inicial.PNG)


- Ejecución de 10 queries SQL a través de SQLAlchemy. Algunos ejemplos:

    - ¿Cuántos títulos de películas se están alquilando?
    
    ![Image text](https://github.com/Davidteje/w3-database-project/blob/main/img/Query%205.PNG)    
    
    - ¿Cuáles son las 5 películas más alquiladas? 
    
    ![Image text](https://github.com/Davidteje/w3-database-project/blob/main/img/Query%201.png)
    
    - Lista de categorías ordenadas por su ‘rental_rate’ medio:
    
    ![Image text](https://github.com/Davidteje/w3-database-project/blob/main/img/Query%202.png)
    
    - ¿Cuáles son los 10 actores/actrices que más salen en las películas? 
    
    ![Image text](https://github.com/Davidteje/w3-database-project/blob/main/img/Query%203.png) 
    
    - Bonus - Creación de nueva tabla 'total_renting' que muestra el coste total de renting facturado por película alquilada.
    
    ![Image text](https://github.com/Davidteje/w3-database-project/blob/main/img/Query%204.png)     

        
        
        
        
        
        
        
        
    