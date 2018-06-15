1\. Create a directory for the project:

`mkdir composetest`{{execute}}

`cd composetest`{{execute}}

2\. Create a file called `app.py` in your project directory and paste this in:

```python
from flask import Flask
from redis import Redis

app = Flask(__name__)
redis = Redis(host='redis', port=6379)

@app.route('/')
def hello():
count = redis.incr('hits')
return 'Hello World! I have been seen {} times.\n'.format(count)

if __name__ == "__main__":
    app.run(host="0.0.0.0", debug=True)
```

3\. Create another file called `requirements.txt` in your project directory and paste this in:

```txt
flask
redis
```

> NOTE: These define the application’s dependencies.
