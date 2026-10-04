"""Configuración base del proyecto FootballPredictorAI.

Este archivo centraliza rutas y constantes iniciales del proyecto.
La finalidad es mantener la infraestructura preparada para futuras etapas.
"""

from pathlib import Path

PROJECT_ROOT = Path(__file__).resolve().parent.parent
DATA_DIR = PROJECT_ROOT / "data"
SYNTHETIC_DATA_DIR = DATA_DIR / "synthetic_test_data"
DATABASE_DIR = PROJECT_ROOT / "database"
SCHEMA_PATH = DATABASE_DIR / "schema.sql"

DATA_STATUS_SYNTHETIC = "SYNTHETIC_TEST_DATA"

SUPPORTED_DATA_STATUSES = {
    DATA_STATUS_SYNTHETIC,
    "EXTERNAL",
    "UNKNOWN",
}
