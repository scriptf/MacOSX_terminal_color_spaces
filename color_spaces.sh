#!/bin/bash

# エスケープシーケンスを使ってターミナルに出力される不可視の文字に背景色を設定する。
# 以下では、半角スペースの背景色を茶、全角スペースの背景色をシアン、
# タブ文字の背景色を青としている。

# "${input_stream}" とすることで改行が反映される
#(input_stream=$(cat); echo -e "${input_stream}"_TEST;)
input_stream=$(cat); 
echo -e "${input_stream}" | perl -p -e 's|(　)|\e[36;7m\1\e[m|g' \
 | perl -p -e 's|( )|\e[33;7m\1\e[m|g'  \
 | perl -p -e 's|(\t)|\e[34;7m\1\e[m|g'
