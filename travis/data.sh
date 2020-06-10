#!/bin/bash

Rscript -e "devtools::load_all('$PWD'); print('$PWD'); fhimaps:::gen_data_all('$PWD/data')"
