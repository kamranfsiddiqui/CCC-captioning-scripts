#!/usr/bin/env python
from pycaption import SRTReader,DFXPWriter

with open('MM3e_AV13_5541_AdaptLessonsForELLs_FINAL2.srt', 'r') as myfile:
    data=myfile.read()

with open('MM3e_AV13_5541_AdaptLessonsForELLs_FINAL2.dfxp', 'w') as target:
    target.write(DFXPWriter().write(SRTReader().read(data)))
