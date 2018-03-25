from bottle import Bottle, run, template, debug, static_file

import os, sys, requests, json

dirname = os.path.dirname(sys.argv[0])

app = Bottle()
debug(True)

token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb2xlIjoiYWRtaW4ifQ.mA8R29LMgur9b_T8V6LJvFX5rHxwg3iGqhEW6M4lx2g"


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
@app.route('equipment', method='GET')
def equipment():
    headers = {
        'Authorization': 'Bearer ' + token,
        'Content-Type': 'application/json',
    }

    response = requests.get('http://api:3000/equipment', headers=headers)

    data = json.loads(response.text)

    print(data)

    return template('equipment', data=data)


@app.route('/users', method='GET')
@app.route('users', method='GET')
def users():
    headers = {
        'Authorization': 'Bearer ' + token,
        'Content-Type': 'application/json',
    }

    response = requests.get('http://api:3000/users', headers=headers)

    data = json.loads(response.text)

    print(data)


    return template('users', data=data)

@app.route('/exercise', method='GET')
@app.route('exercise', method='GET')
def users():
    headers = {
        'Authorization': 'Bearer ' + token,
        'Content-Type': 'application/json',
    }

    response = requests.get('http://api:3000/exercise', headers=headers)

    data = json.loads(response.text)

    print(data)


    return template('exercises', data=data)


run(app, host='0.0.0.0', port = 8080)