#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
require "./MachineLearning.rb"


class Classifier < MachineLearning
        @predict_data
        @label

        def intilize(host, port, name)
                JubatusServerConnect(host, port, name)
        end
        def JubatusServerConnect(host, port, name)
                 @client = Jubatus::Classifier::Client::Classifier.new(host, port, name)
        end
        def GetLabel()
                #return @labbel
                @label = @client.get_labels()
        end
        #教師あり学習させる
        def Train(label, key, values)
                #すべての配列にlabelを格納
                train =  Array.new(values.length).map{Array.new(2, "#{label}")}
                count = 0
                values.each do |content|
                        train[count][1] =  getDataConstruct(key, content)

                        count = count + 1
                end
                train.sort_by{rand}
                @client.train(train)
        end

        #教師あり学習から予測する
        def Predict(key, values)
                data = []
                get_label = []

                #valuesの値をJubatusのデータ構造に変換し格納する
                values.each do |value|
                         data.concat([getDataConstruct(key,value)])
                end

                data.each do |predict_data|
                        result = @client.classify([predict_data])
                        get_label.concat([result[0].max_by{|x| x.score}.label])
                end

                @label = get_label
        end



        #学習しているすべてのラベルを返す
        def getLabel()
                #return @client.get_labels()
                return @label
        end

end