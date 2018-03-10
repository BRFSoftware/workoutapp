import requests
from bottle import route, run, template
import json

@route('/equipment', method='GET')
@route('equipment', method='GET')
def equipment():
    token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb2xlIjoicnctZXF1aXBtZW50In0.yR78_tBuW1Da6wVG9rIvyzhlfbR1xtz7O5oXa1z6Xa4"
    headers = {
        'Authorization': 'Bearer ' + token,
        'Content-Type': 'application/json',
    }

    response = requests.get('http://127.0.0.1:3000/equipment', headers=headers)

    data = json.loads(response.text)

    print(data)

    return template('equipment', data=data)


@route('/')
def index():
    return template('index')

run(host='0.0.0.0', port=8080)




