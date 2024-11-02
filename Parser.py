from flask import Flask, jsonify
import pyautogui
import time

app = Flask(__name__)

def send_route_to_templeos(route):
    for char in route:
        pyautogui.press(char)
    pyautogui.press('enter')

def capture_response():
    response = []
    for _ in range(10):
        response.append(pyautogui.read_key())
        time.sleep(0.5)
    return ''.join(response)


@app.route('/api/datarouter', methods=['GET'])
def datarouter():
    route = "/api/response"
    send_route_to_templeos(route)
    result = capture_response()
    return jsonify({"result": result})

@app.route('/api/token', methods=['POST'])
def token():
    route = "/api/token"
    send_route_to_templeos(route)
    result = capture_response()
    return jsonify({"result": result})

@app.route('/api/account', methods=['GET'])
def account():
    route = "/api/account"
    send_route_to_templeos(route)
    result = capture_response()
    return jsonify({"result": result})

if __name__ == "__main__":
    app.run(port=5000)