## Docker Image for apktool


Based on `OpenJDK 8` and `Apktool 2.4.0`, I have plans to keep this updated (you can contribute too)

### System Requirements:

* [Docker](https://www.docker.com/get-started) 18.06.1+

### How to use: 

for `99.99%` of cases, you probably want to run the command once, and then remove the container.

To run it once use the following command (will take longer for the first time):

    docker run --rm -v `pwd`:/app theanam/apktool d apk_file.apk

this should decompile the apk file `apk_file.apk`

### Better way to use: 

You might convert the above command to an alias. Open your `.bashrc` or `.zshrc` or any other shell configuration file, add the following at the very end:

    alias apktool="docker run --rm -v `pwd`:/app theanam/apktool"

once you close and open a new terminal window once after that, you can use the tool from command line in a cleaner way as the command (apktool) will be available:

    apktool d apk_file.apk



or you can use any other command line arguments mentioned in their official Site: <https://ibotpeaches.github.io/Apktool/>

> Applications are properties of their respective owners.


### Tools used:

1. Docker (<https://docker.io>)
2. apktool (https://ibotpeaches.github.io/Apktool/)
3. openJDK Docker Image (https://hub.docker.com/_/openjdk/)


