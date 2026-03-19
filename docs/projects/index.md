# Projects

A showcase of personal projects and open-source tools.

---

## Data Engineering

<div class="grid cards" markdown>

- :material-database-arrow-right: **Public Financial Data Pipeline**

    ---

    End-to-end ETL pipeline using public financial data sources (FRED, SEC EDGAR) with medallion architecture, Airflow orchestration, and data quality validation.

    - **Medallion Architecture**: Bronze → Silver → Gold layers
    - **Public APIs**: FRED economic indicators + SEC EDGAR filings
    - **Data Quality**: Great Expectations validation at each layer
    - **Containerized**: Docker Compose for reproducible deployment

    **Stack:** Python, Polars, DuckDB, Airflow, Docker

    [:material-github: View on GitHub](https://github.com/chad-eline/pipeline_demo){ .md-button }

</div>

---

## Developer Tools

<div class="grid cards" markdown>

- :material-file-word: **Resume Builder**

    ---

    Generate polished MS Word resumes from Markdown files with customizable YAML templates.

    - Write content in Markdown, style separately
    - Multiple output formats (DOCX, PDF)
    - Template inheritance and overrides
    - Cover letter support

    **Stack:** Python, python-docx

    [:material-github: View on GitHub](https://github.com/chad-eline/resume-builder){ .md-button }

- :material-robot: **AI in Docker**

    ---

    Containerized environment for running local AI/ML workloads with GPU support.

    - Pre-configured for popular AI frameworks
    - GPU passthrough support
    - Reproducible development environment
    - Easy setup and teardown

    **Stack:** Docker, Python, CUDA

    [:material-github: View on GitHub](https://github.com/chad-eline/ollama_in_docker){ .md-button }

- :material-notebook: **Jupyter in Docker**

    ---

    Dockerized Jupyter environment for portable, reproducible data science workflows.

    - Isolated notebook environments
    - Pre-installed data science libraries
    - Volume mounting for persistent work
    - Multi-kernel support

    **Stack:** Docker, Jupyter, Python

    [:material-github: View on GitHub](https://github.com/chad-eline/jupyter_in_docker){ .md-button }

</div>

---

## Want to Collaborate?

I'm always interested in working on interesting projects. Feel free to [reach out](../about.md#contact) if you have an idea or opportunity.
