from flask import render_template, request, redirect, jsonify
from datetime import datetime
from config import app
from controllers import VulnerabilityScanner
import json

apps_obj = VulnerabilityScanner.Apps()


@app.route("/")
def hello():
    return redirect("dashboard")
    # return "Welcome to scanner app "+str(request.headers['Host'])
    # return render_template("login.html")


@app.route("/save")
def mysqlconnection():
    return "Version " + str(VulnerabilityScanner.mysqlconnect())
    # return render_template("login.html")


@app.route("/requests", methods=['POST'])
def requestsData():
    jsonData = json.loads(request.values['data'])
    userId = VulnerabilityScanner.saveUser(jsonData['user'])
    apps = jsonData['apps']
    i = 0
    while (i < len(apps)):
        appInfo = apps[i]['app_info']
        appId = VulnerabilityScanner.saveApp(userId, appInfo)
        i = i + 1

    print(jsonData['user']['subscriber'])
    return jsonify(jsonData['user'])
    # return render_template("login.html")


@app.route("/api/data", methods=['GET'])
def retrieveApps():
    return jsonify(VulnerabilityScanner.dashboard())


@app.route("/api/login", methods=['POST'])
def signin():
    return jsonify(apps_obj.login(request.form.get("username"), request.form.get("password")))


@app.route("/api/dashboard", methods=['GET'])
def dashboard_json():
    return jsonify(apps_obj.dashboard())


@app.route("/api/filter", methods=['GET'])
def filter_report():
    print(str(request.args.get("start")) + " Start - End " + str(request.args.get("end")))
    return jsonify(
        apps_obj.filter_report(request.args.get("levels"), request.args.get("start"), request.args.get("end")))


@app.route("/api/export", methods=['GET'])
def export():
    return apps_obj.export_pdf()


# views

@app.route("/graphs", methods=['GET'])
def old_dashboard():
    return render_template("dashboard.html")


@app.route("/dashboard", methods=['GET'])
def dashboard():
    return render_template("dashboard_graphed.html")


@app.route("/report", methods=['GET'])
def report():
    return render_template("report.html")


@app.route("/login", methods=['GET'])
def login():
    return render_template("login.html")

@app.route("/dashboard", methods=['GET'])
def dashboard_graphed():
    return render_template("dashboard_graphed.html")


@app.route("/profiles", methods=['GET'])
def profiles():
    return render_template("profiles.html")


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
