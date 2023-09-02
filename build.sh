#!/bin/bash

cd cext
make lib

cd ..
stack build
