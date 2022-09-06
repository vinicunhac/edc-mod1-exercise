import boto3
import pandas as pd

# Criar um cliente para interagir com o S3

AWS_REGION = "us-east-2"

s3_client = boto3.client("s3", region_name=AWS_REGION)

s3_client.upload_file("data/MICRODADOS_ENEM_2021.csv",
                        "datalake-vini-xp", 
                        "raw/enem/year-2019/MICRODADOS_ENEM_2021.csv")
