# Projects

A showcase of personal projects and open-source tools.

## Data Engineering

<div class="grid cards featured" markdown>

- :fontawesome-brands-python: **Public Financial Data Pipeline**

    ---

    End-to-end ETL that pulls public economic and filing data, lands it through a medallion architecture, and validates quality at every layer.

    - **Medallion architecture**: Bronze (raw) to Silver (cleaned) to Gold (analytics-ready)
    - **Public sources**: FRED economic indicators + SEC EDGAR filings
    - **Data quality**: Great Expectations checks gate each layer
    - **Orchestrated & containerized**: Airflow DAGs (daily/weekly) on Docker Compose

    **Stack:** Python, Polars, DuckDB, Airflow, Docker

    [:fontawesome-brands-github: View on GitHub](https://github.com/chad-eline/pipeline_demo){ .md-button }

</div>

<div class="grid cards featured" markdown>

- :material-database-sync: **Idempotent Stock Data Pipeline**

    ---

    A reload-safe pipeline that normalizes wide daily stock data into a transactional store and runs analytics over it. Re-running on a revised file migrates the schema, backfills new columns, and restates splits without duplicating rows.

    - **Idempotent upserts**: keyed on each row's business identity, so reloads update in place
    - **Right tool per stage**: Polars ingest, SQLite system of record, DuckDB analytics
    - **Schema evolution**: auto-migrates, backfills, and restates historical stock splits
    - **Tested**: pytest suite over the load and query paths

    **Stack:** Python, Polars, SQLite, DuckDB

    [:fontawesome-brands-github: View on GitHub](https://github.com/chad-eline/owl-stock-pipeline){ .md-button }

</div>

## Developer Tools

<div class="grid cards featured" markdown>

- :fontawesome-brands-python: **Resume Builder**

    ---

    Generate ATS-compliant Word resumes and cover letters from plain Markdown, keeping content separate from styling so you write once and restyle freely.

    - **Markdown in, Word out**: clean, ATS-safe DOCX without tables or hacks
    - **YAML templates**: control fonts, colors, margins, and spacing
    - **Batch or single**: process a whole folder or one file
    - **Resumes + cover letters**: with working clickable links

    **Stack:** Python, python-docx

    [:fontawesome-brands-github: View on GitHub](https://github.com/chad-eline/resume-builder){ .md-button }

</div>

## Containers & Local AI

<div class="grid cards secondary" markdown>

- :material-robot: **Local LLM Stack**

    ---

    Run local models (Mistral, Llama 3, Phi-3) behind a ChatGPT-style UI with MCP tools, fully containerized, plus an optional proxy to prove true offline operation.

    [:fontawesome-brands-github: GitHub](https://github.com/chad-eline/ollama_in_docker){ .md-button }

- :material-notebook: **Jupyter in Docker**

    ---

    Reproducible, portable Jupyter notebook environments built and hosted in a container.

    [:fontawesome-brands-github: GitHub](https://github.com/chad-eline/jupyter_in_docker){ .md-button }

</div>
