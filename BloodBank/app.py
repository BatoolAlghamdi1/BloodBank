from flask import Flask , render_template

app = Flask(__name__)


@app.route('/')
def hello():
    return render_template('index.html')

@app.route('/Register.html') 
def Register():
    return render_template('Register.html')

@app.route('/donate.html')
def donate():
    return render_template('donate.html')

@app.route('/help.html')
def help():
    return render_template('help.html')


