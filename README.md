# w3-database-project

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

- Revisión de columnas con mismos nombres en los df explorados. Conclusiones relevantes:
        - En df_inv hay 223 películas de las 1000 películas que hay en df_film.
        - En df_inv hay 1000 filas con números de inventory_id del 1 al 1000, mientras que en df_ren hay 1000 filas también, pero con números de inventory_id entre el 1 y el 4500 aprox. Sólo 212 inventory_id de df_inv se incluyen en df_ren.
        - En df_film hay 1000 filas con valores de film_id entre 1 y 1000, mientras que el df_old hay 614 film_id.
        - En df_act hay 200 actores, mientras que en df_old hay 39 actores.
        
- Exportación de los df limpios a csv.
- Creación de BBDD proy_videoclub en Sql a través de SQLAlchemy y conexión a la misma.
- Importación de los csv limpios a sql a través de SQLAlchemy.
- Selección de primary keys y foreign keys -> Creación de relaciones entre las diferentes tablas a través de Workbench.
- Ejecución de 10 queries SQL a través de SQLAlchemy. Algunos ejemplos:
    - 
- Bonus - Creación de nueva tabla 'total_renting_cost' que muestra el coste total de renting facturado por película alquilada.

        
        
        
        
        
        
        
        
    