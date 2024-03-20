# Creating a virtualenv with preinstalled packages as in requirements.txt
- https://stackoverflow.com/questions/41427500/creating-a-virtualenv-with-preinstalled-packages-as-in-requirements-txt
- https://help.dreamhost.com/hc/en-us/articles/115000695551-Installing-and-using-virtualenv-with-Python-3
- https://mannimal.blog/2019/07/04/creating-a-virtualenv-with-python-3-7-3/

Typically the steps you always takes are:
- https://medium.com/featurepreneur/how-to-install-virtualenv-in-ubuntu-12ddebc992a6
1. git clone [ repo ]
2. cd [ repo ]
3. `pip install virtualenv` (if you don't already have virtualenv installed)
4. `virtualenv venv` to create your new environment (called 'venv' here)
5. `source venv/bin/activate` to enter the virtual environment
6. `pip install -r requirements.txt` to install the requirements in the current environment
7. When finished working in the virtual environment, you can deactivate it by running the following: `deactivate`

****
- https://www.youtube.com/watch?v=py23Ob2AB9U
- `pip list`
1. `python3.7 -m pip install virtualenv --user`
To create a new environment:
2. `python3.7 -m virtualenv your_foldername_here`
Activate: 
3. `cd your_foldername_here`
4. `source bin/activate`
Deactivate: 
5. `deactivate`
- `pip list`
****

#####
- https://stackoverflow.com/questions/53070868/how-to-install-python3-7-and-create-a-virtualenv-with-pip-on-ubuntu-18-04
- https://stackoverflow.com/questions/54633657/how-to-install-pip-for-python-3-7-on-ubuntu-18
- https://vegastack.com/tutorials/how-to-install-python-3-7-on-ubuntu-22-04/amp/

- https://stackoverflow.com/questions/19816275/no-acceptable-c-compiler-found-in-path-when-installing-python

1. sudo apt update
1. wget https://www.python.org/ftp/python/3.7.1/Python-3.7.1.tgz
2. tar xzf Python-3.7.1.tgz
3. cd Python-3.7.1
4. ./configure --enable-optimizations
5. make altinstall
6. python3.7 -V => Python 3.7.17
7. sudo apt install python3.7 python3-venv python3.7-venv
8.  python3.7 -m venv py37-venv
9. . py37-venv/bin/activate
10. python3.7 -m pip install -r requirements.txt
11. python3.7 -m pip list
12. python3.7 main.py 

- % sudo apt install python3.7 python3-venv python3.7-venv
- % python3.7 -m venv py37-venv
- % . py37-venv/bin/activate => (py37-venv) % 
- python3.7 -m pip install [package name]
#####

#####
-
### How to change from default to alternative Python version on Debian Linux
- https://linuxconfig.org/how-to-change-from-default-to-alternative-python-version-on-debian-linux



