import boto3
import pymysql
import time
import pandas as pd

time.sleep(10)

try:
    connection = pymysql.connect(
    user="my_sql",
        password="my_sql",
        host="mysql",
        port=3306,
        database="db_nombres"
    )


    cursor = connection.cursor()
    
    query = "SELECT * FROM db_nombres.personas;"
    cursor.execute(query)
    records = cursor.fetchall()
    df = pd.DataFrame(records, columns=[col[0] for col in cursor.description])
    print(df)

except Exception as error:
    print(f"Error al conectar a MySQL: {error}")

finally:
    if connection:
        cursor.close()
        connection.close()
        print("Conexión a PostgreSQL cerrada")


ficheroUpload = "data.csv"
df.to_csv(ficheroUpload, index=False)

nombreBucket = "gcr-output-01"

s3 = boto3.client('s3')
response = s3.upload_file(ficheroUpload, nombreBucket, ficheroUpload)

print("Ingesta completada")