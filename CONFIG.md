# Pasos para configurar ambiente de desarrollo local


1. Clonar repositorio de Github:
    ```git clone https://github.com/agbackhoff/test-analytics-engineering-lead.git```

Contenido de repo:
* [./requirements.txt](requirements.txt): Archivo para configurar librerias de python venv
* [./.github/workflows](.github/workflows): Aqui se encuentran los archivos .yml para el proceso CI/CD y el dbt cron job para actualizacion, monitoreo y alertas.
* [./analytics_test/](analytics_test): Este es el directorio del proyecto de dbt, este debe ser seleccionado para correr comandos dbt (e.g. dbt run) en ambiente local.
* [./analytics_test/profiles.yml](analytics_test/profiles.yml): Este archivo configura la conexion con GCP por medio de una variable de entorno.
   
3. Crear y activar venv local:
    ```python3 -m venv dbtvenv && source dbtvenv/bin/activate && pip install -r requirements.txt```

4. Descargar {bq-public-key.json} y colocar en directorio de projecto dbt "test-analytics-engineering/analytics_test"
    ```mv ~/Downloads/bq-public-key.json ~/path_to_repo/test-analytics-engineering-lead/analytics_test```

5. Configurar variable de entorno GOOGLE_APPLICATION_CREDENTIALS:
   Mac OS: ```nano ~/.zshrc``` escribir ```export GOOGLE_APPLICATION_CREDENTIALS="bq-public-key.json"``` correr ```source ~/.zshrc```

7. Comprobar conexion de dbt:
    ```cd analytics_test && dbt debug```

8. Configurar Repo para CI/CD, monitoreo, cron job, y alertas:
* Dirigirte a Github(repo)>Settings>Security>Secrets_and_variables(drop-down-menu)>Actions
* Crear "New repository secret":

Name: GCP_KEY 

Secret: Contenido de Archivo {bq-public-key-base64.txt}

Name: SLACK_WEBHOOK_URL 

Secret: {URL} (se puede generar [aqui](https://api.slack.com/messaging/webhooks).
       

