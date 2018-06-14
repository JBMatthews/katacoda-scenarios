#### Step 1. Create and Execute a Dockerfile  

Creating a new Dockerfile is easy. Follow alone to make a new directory and initialize a new, empty Dockerfile.

1. Create a directory to hold our Dockerfile:

```
$ mkdir myimage
```

2. Create a Dockerfile inside this directory:

```
$ cd myimage
$ vim Dockerfile
```

>NOTE: Vim is used by default, feel free to use another available text editor. Ask the instructor if this is confusing.
  
3. Copy the following text inside the new Dockerfile:

```
FROM ubuntu
RUN apt-get -y update
RUN apt-get install -y figlet
```

4. After saving the file, execute as follows:

```
$ docker build -t myfiglet .
```

Output:

```
Sending build context to Docker daemon 2.048 kB
Sending build context to Docker daemon
Step 0 : FROM ubuntu
---> xxxxxxxxxxxx
Step 1 : RUN apt-get update
---> Running in xxxxxxxxxxxx
---> xxxxxxxxxxxx
Removing intermediate container xxxxxxxxxxxx
Step 2 : RUN apt-get install figlet
---> Running in xxxxxxxxxxxx
---> xxxxxxxxxxxx
Removing intermediate container xxxxxxxxxxxx
Successfully built xxxxxxxxxxxx
```

>NOTE: Number's will defer depending on the build number, per host.

5. Now, the fun part! To confimr success, let's spin up a new container and give it a command, unique to Figlet:

```
$ docker run -it myfiglet
```

```
# figlet hello
# exit
```

>NOTE: Again, please understand that we haved used (`#`) here, because after we issused the run command and included the (`-it`) option, we are operating from inside the container itself. 