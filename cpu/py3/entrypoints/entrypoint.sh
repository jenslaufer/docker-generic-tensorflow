#!/bin/bash

pip install --upgrade --upgrade-strategy only-if-needed pip
pip install --upgrade --upgrade-strategy only-if-needed $MODULE_REPO
python -m $MODULE_CMD