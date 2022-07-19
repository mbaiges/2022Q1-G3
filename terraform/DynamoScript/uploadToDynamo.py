import sys
import csv
import boto3

dynamodb = boto3.resource('dynamodb')

tableName = 'cars' # FIXME
filename = './MOCK_DATA.csv' # FIXME

def main():
    csvfile = open(filename)

    write_to_dynamo(csv.DictReader(csvfile))

    return print("Done")

def write_to_dynamo(rows):
    table = dynamodb.Table(tableName)
    with table.batch_writer() as batch:
        for row in rows:
            batch.put_item(
                Item={
                    'carId': row['carId'],
                    'modelName': row['modelName'],
                    'brandName': row['brandName'],
                    'modelYear': row['modelYear'],
                    'color': row['color']
                }
            )

main()
