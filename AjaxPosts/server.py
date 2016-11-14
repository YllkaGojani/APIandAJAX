from flask import Flask,render_template,request,redirect,jsonify
from mysqlconnection import MySQLConnector

app = Flask(__name__)
mysql = MySQLConnector(app,'ajaxPosts')

@app.route('/')
def index():
	return render_template('index.html')

@app.route('/posts')
def select():
	return_query = "SELECT * FROM posts"
	posts = mysql.query_db(return_query)
	return render_template('partials/posts.html',posts = posts)		

@app.route('/posts/create', methods=['POST'])
def create():
	query = "INSERT INTO posts (description,created_at,updated_at) VALUES ('{}',NOW(),NOW())".format(request.form['desc'])
	mysql.query_db(query)
	return redirect('/posts')

app.run(debug = True)	