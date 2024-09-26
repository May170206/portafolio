from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def index():
    return 'Hola mundo'

@app.get('/wola')
def html():
    return render_template('portafolio.html')

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')

