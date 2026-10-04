# FootballPredictorAI

Este repositorio tiene como objetivo construir un sistema de análisis estadístico de partidos de fútbol con enfoque educativo y transparente.

## Objetivo de la primera etapa

La primera fase del proyecto es únicamente infraestructura inicial:

- preparar la estructura del repositorio;
- definir la configuración base en Python;
- preparar SQLite con un esquema inicial;
- dejar lista una base de datos sintética para pruebas;
- configurar pytest para validación básica;
- mantener un enfoque claro: no usaremos datos reales ni cuotas todavía.

## Principios del proyecto

- No se inventan partidos ni resultados reales.
- No se prometen ganancias ni predicciones exactas.
- No se usarán cuotas ni mercados de apuestas en esta etapa inicial.
- Todo dato sintético debe quedar claramente identificado como `SYNTHETIC_TEST_DATA`.
- La predicción futura debe usar siempre información disponible antes del cutoff timestamp.
- La arquitectura debe permitir comparar modelos en etapas posteriores.

## Estructura del proyecto

```text
FootballPredictorAI/
├── README.md
├── requirements.txt
├── .gitignore
├── pytest.ini
├── data/
│   └── synthetic_test_data/
│       └── synthetic_matches.csv
├── database/
│   └── schema.sql
├── src/
│   ├── __init__.py
│   └── config.py
├── tests/
│   └── __init__.py
└── .venv/   # generado localmente cuando se crea el entorno
```

## Requisitos de la primera fase

- Python 3.11 o superior recomendado.
- pandas
- numpy
- scipy
- pytest
- SQLite (biblioteca estándar de Python)

## ¿Qué haremos después?

En fases posteriores, el proyecto irá creciendo con:

- carga y validación de datos;
- cálculo de estadísticas por equipo;
- estimación de probabilidades para mercados;
- backtesting cronológico con cutoff timestamp;
- métricas de evaluación;
- comparación de modelos;
- módulos separados para cuotas y UI más adelante.

## Cómo preparar el entorno local

En una terminal, ejecuta:

```bash
python -m venv .venv
source .venv/bin/activate
python -m pip install --upgrade pip
pip install -r requirements.txt
pytest
```

Si usas Windows PowerShell:

```powershell
python -m venv .venv
.\.venv\Scripts\Activate.ps1
python -m pip install --upgrade pip
pip install -r requirements.txt
pytest
```

## Importante sobre los datos

Los datos incluidos en `data/synthetic_test_data/` son exclusivamente ficticios y sirven para:

- validar la infraestructura,
- verificar la estructura del proyecto,
- preparar pruebas automatizadas,
- simular una base mínima de partidos antes de introducir la lógica de análisis.

No se presentan como partidos reales ni como datos oficiales de ninguna liga, competencia o proveedor.

## Licencia y uso

Este proyecto se usa con fines educativos. La finalidad es aprender construcción de software, análisis de datos y validación estadística sin ofrecer promesas de rendimiento o rentabilidad financiera.
