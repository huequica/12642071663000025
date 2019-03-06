# 12642071663000025 UnzenMyougappoi
雲仙冥加っぽい変換をするやつ  
あくまで**ぽい**なので原作通りの変換は不可能です

# 変換どうやってるの How to Convert
日本語をローマ字に変換した後、以下の表に当てはめて変換をしています  

| val | str |
|:---:|:---:|
|0|`m` or `ai`|
|1|`i` or `u`|
|2|`n` or `o`|
|3|`sh` or `a`|
|4|`ch` or `e`|
|5|`j` or `i`|
|6|`z` or `yu`|
|7|`d` or `yo`|
|8|`t` or `ya`|
|9|`ts` or `ie`|  

| val | str |
|:---:|:---:|
|00|`p`|
|11|`x`|
|22|`h`|
|33|`s`|
|44|`k`|
|55|`w`|
|66|`g`|
|77|`f`|
|88|`b`|
|99|`r`|

# 例 Example
`雲仙冥加`を変換してみる  

1. `うんぜんみょうが`に戻す  
2. ローマ字に変換すると`unzenmyouga`になる
3. 上記のアルファベットを数字に置き換えていく。  
`unzen`は`12642`という感じ  
結果としては`12642071663`になる

# 使用例 Sample Code
``` ruby
require './main'
unzen_lang = Unzen_lang.new
puts unzen_lang.convert(ARGV[0])
```

``` bash
$ ruby example.rb 雲仙冥加
12642071663
```
