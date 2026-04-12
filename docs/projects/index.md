# Projects

A showcase of personal projects and open-source tools.

## Data Engineering

<div class="grid cards featured" markdown>

- :fontawesome-brands-python: **Public Financial Data Pipeline**

    ---

    End-to-end ETL pipeline using public financial data sources (FRED, SEC EDGAR) with medallion architecture, Airflow orchestration, and data quality validation.

    - **Medallion Architecture**: Bronze → Silver → Gold layers
    - **Public APIs**: FRED economic indicators + SEC EDGAR filings
    - **Data Quality**: Great Expectations validation at each layer
    - **Containerized**: Docker Compose for reproducible deployment

    **Stack:** Python, Polars, DuckDB, Airflow, Docker

    [:fontawesome-brands-github: View on GitHub](https://github.com/chad-eline/pipeline_demo){ .md-button }

</div>

## Developer Tools

<div class="grid cards featured" markdown>

- :fontawesome-brands-python: **Resume Builder**

    ---

    Generate polished MS Word resumes from Markdown files with customizable YAML templates. Separates content from styling—write once, output to multiple formats.

    - Write content in Markdown, style separately
    - Multiple output formats (DOCX, PDF)
    - Template inheritance and overrides
    - Cover letter support

    **Stack:** Python, python-docx

    [:fontawesome-brands-github: View on GitHub](https://github.com/chad-eline/resume-builder){ .md-button }

</div>

<div class="grid cards secondary" markdown>

- :material-robot: **AI in Docker**

    ---

    Containerized local AI/ML with GPU passthrough

    [:fontawesome-brands-github: GitHub](https://github.com/chad-eline/ollama_in_docker){ .md-button }

- :material-notebook: **Jupyter in Docker**

    ---

    Portable, reproducible data science environments

    [:fontawesome-brands-github: GitHub](https://github.com/chad-eline/jupyter_in_docker){ .md-button }

</div>
