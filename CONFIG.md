# Pasos para configurar ambiente de desarrollo local


1. Clonar repositorio de Github:
    ```git clone https://github.com/agbackhoff/test-analytics-engineering-lead.git```

    Este repo contiene el requirments.txt para el virtual environment de python con las librerias necesarias para correr dbt de manera local

2. Creare y activar venv:
    ```python3 -m venv dbtvenv && source dbtvenv/bin/activate && pip install -r requirements.txt```

3. Descargar bq-public-key.json y colocar en directorio de projecto dbt "test-analytics-engineering/analytics_test"

4. Comprobar conexion de dbt:
    ```cd analytics_test && dbt debug```

