from flask import Flask , render_template

app = Flask(__name__);

@app.route('/')
def home():
    return "<h1>This is deployed by CodePipeline!!!!!!</h1>"

if __name__ == "__main__":
    app.run(debug=True, host='0.0.0.0');
