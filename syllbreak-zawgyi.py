import sys
import re

with open(sys.argv[1],'r') as input_file:
    for i in input_file:
        line = re.sub(r'(ေ*ျ*ႀ*ၿ*ၾ*[က-အ|႐|ႏ|ဥ|ဦ]([က-အ]့*္[့း]*|[ါ-ူ]|[ဲ-း]|်|[ြ-ှ]|[ၐ-ၽ]|[ႁ-ႎ]|[႑-႟]){0,}|.)',r'\1\n',i)
        print(line)
