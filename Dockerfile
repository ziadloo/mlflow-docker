FROM ghcr.io/mlflow/mlflow:v3.17.0

RUN apt-get -y update && \
    apt-get -y install python3-dev default-libmysqlclient-dev build-essential pkg-config && \
    python -m pip install --upgrade pip && \
    python -m pip install mysqlclient "psycopg[binary]"

CMD ["bash"]
