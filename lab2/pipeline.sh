#!/bin/bash
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py
python3 -m pip install -r var/lib/jenkins/workspace/test/lab2/requirements.txt 

python3 /var/lib/jenkins/workspace/test/lab2/data_creation.py
python3 /var/lib/jenkins/workspace/test/lab2/data_preprocessing.py
python3 /var/lib/jenkins/workspace/test/lab2/model_preparation.py
python3 /var/lib/jenkins/workspace/test/lab2/model_testing.py | awk '{print "Mean squared error: %.2f", $4}'
