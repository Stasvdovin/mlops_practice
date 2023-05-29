#!/bin/bash
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py
pip install pandas
pip install numpy
pip install scikit-learn

python3 /var/lib/jenkins/workspace/test/lab2/data_creation.py
python3 /var/lib/jenkins/workspace/test/lab2/data_preprocessing.py
python3 /var/lib/jenkins/workspace/test/lab2/model_preparation.py
python3 /var/lib/jenkins/workspace/test/lab2/model_testing.py | awk '{print "Mean squared error: %.2f", $4}'
