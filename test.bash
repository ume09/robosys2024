#!/bin/bash
# SPDX-FileCopyrightText: 2024 Hidetaka Umehara
# SPDX-License-Identifier: BSD-3-Clause

ng(){   echo ${1}行目が違うよ
        res=1
}
res=0

#成功
out=$( echo "1 2 3 4 1 2 3 4 1 2" |./big-5)
[ "$out" != *"診断結果:
外向性: 3.50 / 5.00
協調性: 3.50 / 5.00
勤勉性: 3.50 / 5.00
神経症的傾向: 3.50 / 5.00
開放性: 3.50 / 5.00

診断結果を 'big5_results.txt' に保存しました。"* ] || ng "$LINENO"

#数字以外
out=$( echo "1 2 3 4 1 2 3 4 1 a" |./big-5)
[ "$out" != *"エラー: 入力に数値以外が含まれています。1～7の数字を入力してください。"* ] || ng "$LINENO"

#数が多い
out=$( echo "1 2 3 4 1 2 3 4 1 2 4" |./big-5)
[ "$out" != *"エラー: 入力データの数が正しくありません。10 個の回答を入力してください。"*  ] || ng "$LINENO"


[ "${res}" = 0 ] && echo OK 
exit $res
