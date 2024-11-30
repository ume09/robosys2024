# robosys2024

ロボットシステム学用リポジトリ

## コマンドの概要

BIG5-BASICという性格診断を簡易的に行うプログラムです。

簡易的なため問いの数は１０問となっています。

後述する質問の答えを標準入力時に1（全く当てはまらない）〜7（非常に当てはまる）で入力することでBIG5での数値を表示します。

また結果を"big5_results.txt"として保存します。


## 使用する前に行うこと

以下の手順でローカル環境にインストールしてください。

リポジトリのクローンを行う
```
git clone https://github.com/ume09/robosys2024.git
```

ディレクトリに移動する

```
cd robosys2024
```

./での使用を可能にする

```
chmod +x ./big-5
```

## 質問内容

このプログラムは対話型ではないため、入力時に値を入れなければいけないということから、診断の質問内容を下記に掲示します。

1（全く当てはまらない）〜7（非常に当てはまる）で回答してください。

1.活発で、外交的だと思う

2.控えめでおとなしいと思う

3.人に気を遣う優しい人間だと思う

4.他人に不満を持ちもめ事を起こしやすいと思う

5.しっかりしていて自分に厳しいと思う

6.だらしなくうっかりしている

7.心配性でうろたえやすい

8.冷静で気分が安定している

9.新しいことが好き

10.発想力にかけた平凡な人間だと思う


## 使い方

```
echo "1の回答　２の回答　…　10の回答" |./big-5
```

のように質問の回答を入力してください。

### サンプル

入力
```
echo "1 2 3 4 1 2 2 4 1 4 " |./big-5
```

実行結果
```
診断結果:
外向性: 3.50 / 5.00
協調性: 3.50 / 5.00
勤勉性: 3.50 / 5.00
神経症的傾向: 3.00 / 5.00
開放性: 2.50 / 5.00

診断結果を 'big5_results.txt' に保存しました。
```


## 必要なソフトウェア

- Python

 - テスト済み:3.7~3.10


## テスト環境

-  Ubuntu-latest\ubuntu-22.04.5LTS


## ライセンス

- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．

- このパッケージのコードは，big-5,test.bashを除き、下記のスライド（CC-BY-SA 4.0 by ryuichi ueda）のものを，本人の許可を得て自身の著作としたものです．
  - https://github.com/ryuichiueda/slides_marp/tree/master/robosys2024

© 2024 Hidetaka Umehara


## 参考資料

-「いちばんやさしいPython入門教室」著:大澤文孝 2019/8/10初版第６刷発行

- [Pythonで出力結果をファイルに保存する方法を現役エンジニアが解説](https://magazine.techacademy.jp/magazine/21157)

- [Pythonを使ったファイル読み込み/保存](https://knowledge.shade3d.jp/knowledgebase/python%E3%82%92%E4%BD%BF%E3%81%A3%E3%81%9F%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E8%AA%AD%E3%81%BF%E8%BE%BC%E3%81%BF-%E4%BF%9D%E5%AD%98)

- [[with構文の理解・応用] Pythonの標準出力の出力先を柔軟に切り替える](https://qiita.com/bee2/items/4e462b545140a81abd44)

- [Python 文字リスト（配列）の操作](https://qiita.com/HajimeKawahara/items/02c288667f0a893e8761)

- [\[5分でマスター\]初心者はまずREADMEを書け\[テンプレート付き\]](https://qiita.com/Canard_engineer_c_cpp/items/81ce4e53881138dbf37f)

- [使いこなせていますか？Python 組み込み関数全71件 完全解説[2023 最新版]](https://qiita.com/t_aki/items/a5e578aecf8cc20bec31)

- [C言語のEOFをマスター！7つのポイントで理解する](https://jp-seemore.com/iot/10847/#toc3)

-　[【Python】標準入力でキーボードからデータを受け取り（sys.stdin.readlines、input関数）](https://python.joho.info/tutorial/python-sys-stdin-readline/)

- [素敵なREADMEの書き方](https://qiita.com/koeri3/items/f85a617dcb6efebb2cab)

- [【Python入門】行列の基礎から実際の活用方法まで！](https://www.sejuku.net/blog/75248)

- [日本語版 Ten Item Personality Inventory(TIPI−J)作成の試み
小塩真司・阿部晋吾・カトロ−ニ ピノ (2012).]
パ−ソナリティ研究, 21, 40−52.](https://www.jstage.jst.go.jp/article/personality/21/1/21_40/_article/-char/ja/)


## 本格的にBIG-5診断をしたい人用

ビッグファイブ性格診断  BIG5-BASIC(https://big5-basic.com/front/index.php?route=logic/diagnosis) 
