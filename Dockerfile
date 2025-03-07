FROM h2020candela/spark-base

# Set default environment variables. These can also be set at the command line when invoking /bin/spark-submit
ENV MASTER_CONTAINER_NAME=spark-master
ENV SPARK_EXECUTOR_MEMORY=20G
ENV SPARK_EXECUTOR_CORES=8

# Install libraries
COPY ./requirements.txt .
RUN pip install -r requirements.txt

COPY ./spark-defaults.conf $SPARK_HOME/conf/

EXPOSE 4040 8888

WORKDIR /home/
