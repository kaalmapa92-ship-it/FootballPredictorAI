PRAGMA journal_mode = WAL;

CREATE TABLE IF NOT EXISTS data_sources (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    data_status TEXT NOT NULL CHECK (data_status IN ('SYNTHETIC_TEST_DATA', 'EXTERNAL', 'UNKNOWN')),
    source_url TEXT,
    source_notes TEXT,
    created_at TEXT NOT NULL DEFAULT (strftime('%Y-%m-%dT%H:%M:%SZ', 'now')),
    updated_at TEXT NOT NULL DEFAULT (strftime('%Y-%m-%dT%H:%M:%SZ', 'now'))
);

CREATE TABLE IF NOT EXISTS matches_raw (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id TEXT NOT NULL UNIQUE,
    data_source_id INTEGER,
    match_date TEXT,
    match_time TEXT,
    home_team TEXT NOT NULL,
    away_team TEXT NOT NULL,
    home_goals INTEGER,
    away_goals INTEGER,
    data_status TEXT NOT NULL DEFAULT 'SYNTHETIC_TEST_DATA',
    source_url TEXT,
    created_at TEXT NOT NULL DEFAULT (strftime('%Y-%m-%dT%H:%M:%SZ', 'now')),
    updated_at TEXT NOT NULL DEFAULT (strftime('%Y-%m-%dT%H:%M:%SZ', 'now')),
    FOREIGN KEY (data_source_id) REFERENCES data_sources(id)
);

CREATE TABLE IF NOT EXISTS prediction_runs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    run_name TEXT,
    cutoff_timestamp TEXT NOT NULL,
    notes TEXT,
    created_at TEXT NOT NULL DEFAULT (strftime('%Y-%m-%dT%H:%M:%SZ', 'now'))
);

-- Este esquema es una base inicial para un proyecto que posteriormente
-- registrará información de fechas, horas, fuentes, cutoff timestamps,
-- y fechas de actualización, sin comprometerse todavía con la lógica
-- completa del motor de predicción.
