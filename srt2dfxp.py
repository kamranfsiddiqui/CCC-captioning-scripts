#!/usr/bin/python
from pycaption import SRTReader,DFXPWriter
import sys, getopt

inputFileName = sys.argv[1]
outputFileName = ""
inputFileSplit = inputFileName.split(".")
outopt = False
if inputFileSplit[len(inputFileSplit) - 1] != "srt":
    print "InputError: Can only convert *.srt files"
    sys.exit()

with open(inputFileName, 'r') as myfile:
    data=myfile.read()

data = unicode(data, "utf-8")

with open(inputFileSplit[0]+".dfxp", 'w') as target:
    target.write(DFXPWriter().write(SRTReader().read(data)))
