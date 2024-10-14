# Proyecto Gestión
Liga del diagrama de flujo de proceso y arquitectura tecnológica: [app.eraser.io](https://app.eraser.io/workspace/64ET1w89yUFGn1CXHjUe?origin=share)

Liga de Kanban: [Trello](https://trello.com/invite/b/67083c65adedb93282f37422/ATTIf192b0cd806abeedd729a745aea93b9d98387D8E/gestion-optimizacion-pipelines)

## Entregables esperados:

- Diseñar estrategia de optimización de pipelines
- Diseñar arquitectura tecnológica moderna para pipelines

## Objetivo del proyecto:

- Mejorar la eficiencia en el uso de tiempo y recursos
- Reducir frecuencia y tiempo para resolución de fallos en las pipelines
- Automatizar alertas y levantamiento de tickets de resolución

## Condiciones:

- 20% del tiempo del equipo
- Uso de tecnología y licenciamiento libre

## Propuesta:

Cumpliremos los objetivos del proyecto implementando la estrategia descrita en el diagrama ('Estrategia Optimización'). Esta utiliza metodologías de gestión como Kanban y tecnología de ingeniería en analítica, que incluye dbt, Airflow, Git, GCP, Confluence, Slack, entre otras.

### Beneficios directos:

- Gestión de proceso
- Transparencia con stakeholders
- Pruebas integradas
- Pruebas de unidad
- Automatización de alertas
- Manejo de errores
- Documentación y control de pipelines
- Optimización de recursos de nube

### Beneficios indirectos:

Esta estrategia de optimización nos brindará una reducción considerable en el tiempo invertido en intervenciones manuales para resolver errores; nos ayudará a usar los recursos de manera eficiente; incrementará la velocidad de resolución de problemas, reduciendo el tiempo de inactividad de los reportes y herramientas consumidoras de datos; y disminuirá la frecuencia de fallos gracias a un mayor control de calidad de las pipelines y la lógica que utilizan.

## Caso Hipotético:

- 8 Ingenieros
- 160 horas laborales (mensual)
- 32 horas disponibles (20%)

### Capacidad para desarrollo (mensual):

Por integrante:
- Máximo: ~2.25 pipelines migradas
- Mínimo: ~0.80 pipelines migradas

Por equipo (8 integrantes):
- Máximo: ~18 pipelines migradas
- Mínimo: ~6.40 pipelines migradas

## Herramientas de Gestión:

- **Confluence:** Documentación y base de datos de pipelines
- **Trello:** Gestión de estatus de optimización, transparencia con stakeholders, y automatización de tickets para resolución de errores
- **Slack/Email:** Automatización de alertas

## Infraestructura Tecnológica:

- BigQuery
- dbt
- Github + Github Actions (CI/CD)
- Airflow (Astronomer + Cosmos, Dagster o Prefect)

## Entregables por Etapa:

**Crear un documento en Confluence por pipeline legado*

**Los tickets representan pipelines*

### 1. Mapeo Legado

1. Crear ticket en Trello ligado a doc en Confluence
2. Definición de fuentes
3. Mapeo de transformaciones y joins
4. Pruebas de lógica
5. Definición de stakeholders, requisitos de consumidor, e identificar reportes activos e inactivos

### 2. Migración/Desarrollo

1. Mover ticket a etapa correspondiente
2. Definición de fuentes, modelos y pruebas columnares
3. Desarrollo de lógica en SQL con modelos de dbt
4. Desarrollo de pruebas unitarias
5. Comparación con mart productivo y pruebas en ambiente de desarrollo
6. Enviar ticket a producción y monitoreo

### 3. Optimización

1. Mover ticket de producción a optimización
2. Desarrollo SQL
3. Pruebas de rendimiento de SQL propuesto vs SQL legado
4. Pruebas integradas y pruebas unitarias
5. Comparación con modelo productivo y pruebas en ambiente de desarrollo
6. Enviar ticket a producción y monitoreo

### 4. Monitoreo

1. Monitorear pipeline pasivamente
2. Atender tickets de resolución en caso de fallos
