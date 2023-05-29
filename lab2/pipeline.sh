#!/bin/bash
pip install scikit-learn
pip install pandas
pip install numpy
find /lab2 -type d -exec chmod 777 {} \;
find /lab2 -type f -exec chmod 777 {} \;
python3 /lab2/data_creation.py
python3 /lab2/data_preprocessing.py
python3 /lab2/model_preparation.py
python3 /lab2/model_testing.py | awk '{print "Mean squared error: %.2f", $4}'
