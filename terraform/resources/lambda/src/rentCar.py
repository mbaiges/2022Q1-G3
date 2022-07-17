import boto3, json

def handler(event, context):
    client = boto3.client('dynamodb')
    client.put_item(
        TableName='cars',
        Item= {
            "carId": {
                "S": "1"
            },
            "modelName": {
                "S": "DeLorean"
            }
            "color": {
                "S": "Grey"
            }
            "year": {
                "N": 1985
            }
        }
    )
		
    return {
        "statusCode": 200,
        "headers": { 
            "Access-Control-Allow-Origin": "*", 
        },
        "body": "Car rented"
    }