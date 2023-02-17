
**Check installed Python**

> ls -ls /usr/bin/python*

**Check Python version**

> python --version

> sudo apt-get install software-properties-common
> 
> // adding python repository 
> sudo add-apt-repository ppa:deadsnakes/ppa
> 
> sudo apt update
> 
> // install python 3.10
> sudo apt install python3.10

**Check Python 3.10**

> python3.10 --version

**Update Alternatives**

> sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.10 1
> sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.8 2

the '1' and '2' is the numbering 

**Switch Version**

> sudo update-alternatives --config python

