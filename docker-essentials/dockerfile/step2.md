#### Step 2. History of a Dockerfile

This may not seem like a big deal now, but image when your Dockerfile consist of many more layers. 

1. Issue a command to see the history of our newest Dockerfile:

```
docker history myfiglet
```

2. Let's change our Dockerfile to include JSON syntax, as follows:

```
FROM ubuntu
RUN apt-get update
RUN ["apt-get", "install", "figlet"]
```

3. Then, build the new Dockerfile again, just as we did before:

```
$ docker build -t myfiglet .
```

Output:

```
...
Successfully built xxxxxxxxxxxx
```

4. Now, compare the new history along side the other:

```
docker history myfiglet
```

