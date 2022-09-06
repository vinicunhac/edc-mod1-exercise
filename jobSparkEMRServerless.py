import pyspark
from pyspark.sql.functions import *
from pyspark.sql import SparkSession

spark = (
    SparkSession.builder.appName("ExerciseSpark")
    .getOrCreate()
)

enem = (
    spark
    .read
    .format("csv")
    .option("header", True)
    .option("inferSchema", True)
    .option("delimiter", ";")
    .load("s3://datalake-vini-xp/raw/enem/year-2019/MICRODADOS_ENEM_2021.csv")
)


(enem\
    .write
    .mode("overwrite")
    .format("parquet")
    .partitionBy("year")
    .save("s3://datalake-vini-xp/staging/testeemrserverless")

)