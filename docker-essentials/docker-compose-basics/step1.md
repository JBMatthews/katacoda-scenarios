1\. If you're a Mac or Windows user, the best way to install Compose and keep it up-to-date is Docker for Mac and Windows. Docker for Mac and Windows will automatically install the latest version of Docker Engine for you. Check to see if docker-compose is installed already, by using the version flag, like this:

`docker-compose --version`{{execute}}



2\. Alternatively, you can use the usual commands to install or upgrade Compose:

`curl -L https://github.com/docker/compose/releases/download/1.14.0/docker-compose-'uname -s' -'uname -m' > /usr/local/bin/docker-compose`{{execute}}

`chmod +x /usr/local/bin/docker-compose`{{execute}}

#### Compose file format compatibility matrix

| Compose File Format  | Docker Engine |
| -------------------- |:-------------:|
| 3.3                  |    17.06.0+   |
| 3.0 ; 3.1            |    1.13.0+    |
| 2.2                  |    1.13.0+    |
| 2.1                  |    1.12.0+    |
| 2.0                  |    1.10.0+    |
| 1.0                  |    1.9.1+     |


>NOTE: Must use `sudo` and may have to elevate premissions, using `sudo -- su`. Remember, `docker` is root's password.  

