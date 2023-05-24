#!/bin/bash
pip install scikit-learn
python3 data_creation.py
python3 data_preprocessing.py
python3 model_preparation.py
python3 model_testing.py | awk '{print "Mean squared error: %.2f", $4}'
