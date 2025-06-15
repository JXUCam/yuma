#!/bin/sh
# to create online IME dictionary, in JavaScript. The table needs to be sorted strictly in dictionary order.

echo "MAX=3;  //==输入码的最大限长。例如仓頡设定为5了、五笔则为4等。列表须严格遵照字典顺序。" > yuma3-dict.js
echo "// Version=$(date +%Y%m%d);" >> yuma3-dict.js
echo "// CodeList=\"aa 字|aaa 典|aab 顺|aba 序|zzy 编|zzz 码\"; CodeList=CodeList.split('|');" >> yuma3-dict.js
echo -n "CodeList=\"" >> yuma3-dict.js

head -8105 code.txt | awk '{print $2,$1}' | sort -d | tr '\n' '|' >> yuma3-dict.js

echo "\";" >> yuma3-dict.js
echo "CodeList=CodeList.split('|');" >> yuma3-dict.js

