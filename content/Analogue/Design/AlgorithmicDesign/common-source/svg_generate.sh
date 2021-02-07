#!/bin/bash

pdflatex common_source_circuit_ideal.tex 
pdf2svg common_source_circuit_ideal.pdf common_source_circuit_ideal.svg
inkscape -z -e common_source_circuit_ideal.png -w 1000 -h 1000 common_source_circuit_ideal.svg