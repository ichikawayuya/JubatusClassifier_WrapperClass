# Jubatus_Classifer_wrapper_Class

Jubatusの多値分類のラッパークラスを作成しました．

初めて使用する人達はデータ構造(Datum)に変換したり，様々な制約に悩まされたでしょう．
私もその一人で，制約でエラーに悩まされました．

以下にメソッドの説明を記載します．

#Methods(Classifire.rb)
Train(label, key, values)

学習させるデータ（教師あり学習）を設定する．
変数valuesは配列なので，labelとkeyを取得すれば一連の流れでセットすることが可能．

Predict(key, values)

データから予測するメソッド．
こちらもvaluesが配列なので，keyが決まれば一連の流れで処理することが可能．

GetLabel()
全てのラベルを取得する．
