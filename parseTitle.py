import sys

s = sys.argv[1];
s = s.replace("/", "|")
s = s.replace(" ", "_")
s = s.replace("\"", "")
print s
