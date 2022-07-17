import boto3, json

def handler(event, context):
    client = boto3.client('dynamodb')
    response = client.scan(TableName='cars')
    data = response['Items']
		
    return {
        "statusCode": 200,
        "headers": { 
            "Access-Control-Allow-Origin": "*", 
        },
        "body": json.dumps(data)
    }