from bottle import Bottle, run, template, debug, static_file

import os, sys, requests, json

dirname = os.path.dirname(sys.argv[0])

app = Bottle()
debug(True)


@app.route('/static/<filename:re:.*\.css>')
def send_css(filename):
    return static_file(filename, root=dirname+'/static/asset/css')


@app.route('/static/<filename:re:.*\.js>')
def send_js(filename):
    return static_file(filename, root=dirname+'/static/asset/js')


@app.route('/')
def index():
    data = {"developer_name":"Ahmedur Rahman Shovon",
			"developer_organization":"Datamate Web Solutions"}
    return template('index', data = data)

@app.route('/equipment', method='GET')
def equipment():
    token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb2xlIjoicnctZXF1aXBtZW50In0.yR78_tBuW1Da6wVG9rIvyzhlfbR1xtz7O5oXa1z6Xa4"
    headers = {
        'Authorization': 'Bearer ' + token,
        'Content-Type': 'application/json',
    }

    response = requests.get('http://api:3000/equipment', headers=headers)

    data = json.loads(response.text)

    print(data)

    return template('equipment', data=data)

run(app, host='0.0.0.0', port = 8080)