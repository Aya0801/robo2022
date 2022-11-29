# robosys2022
ロボットシステム学練習用リポジトリ
# 機能
* 標準入力から読み込んだ数字を足す
* 足した数を奇数か偶数か判定する

# plusコマンドのテスト
![test](https://github.com/Aya0801/robosys2022/actions/workflows/test.yml/badge.svg)

# ダウンロード方法
ターミナルに入力
```
$ git clone https://github.com/Aya0801/robosys2022.git
$ cd robosys2022
$ chmod +x plus

```
# 動作例1
入力

```
$ seq 6 | ./plus
```

出力
```
21.0 　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　
21.0 Odd numberes
```
# 動作例2
入力
```
$ cat number | ./plus
```
```
160.0 Even numberes
```
# 実行方法
```
seq ［足したい数］｜　./plus
```
標準入力に使うseqは１から指定した数まで１ずつ加算されていくまた、seqの性質上標準入力する数字は1以上である。


また、小数点以下は切り捨てされる
# 実行方法2
```
$ cat number | ./plus
```
numberの中に好きな数字を縦に入力する

## 必要なソフトウエア
* Python 3.7～3.10

## テスト環境
* Ubuntu 20.04.5LTS
# 権利
* このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
* © 2022 Atsuya Sawayama

