# Jubatus_Classifer_wrapper_Class

Jubatusの多値分類のラッパークラスを作成しました．

初めて使用する人達はデータ構造(Datum)に変換したり，様々な制約に悩まされたでしょう．
私もその一人で，制約でエラーに悩まされました．

以下にメソッドの説明を記載します．
#入力形式
入力する形式として配列とし， 
key_values = [[key1,value1],[key2,value2],...]
の形式で扱うこととする．
これによってKey-Value形式がわかりやすくなり，見直した時にわかりやすくなる．
#Methods(Classifire.rb)
##Train(label, key_values)
ここでは，入力するkey_valuesをJubatusのデータ構造に変換し，labelと結びつけて学習（教師あり学習）させるメソッドである．

##Classify(key_values)
クラスタリングしたいデータ（入力形式に合ったデータ）を送ることによって，
学習したデータから類似しているラベルと類似スコアを取得する．

##getLabels()
全てのラベルを取得する．
