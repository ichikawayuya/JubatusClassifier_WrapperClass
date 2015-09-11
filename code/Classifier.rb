#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
require "./MachineLearning.rb"
#require "./GraduateThesis.rb"


class Classifier < MachineLearning
        @predict_data
        @label
        @train_data

        def initialize(host, port, name)
                JubatusServerConnect(host, port, name)
        end
        def JubatusServerConnect(host, port, name)
                 @client = Jubatus::Classifier::Client::Classifier.new(host, port, name)
        end
        #教師あり学習させる
        def Train(label, key_values)
                @train_data = KeyValues(key_values)
                @train_data =[["#{label}", getDataConstruct(@train_data)],]
                @client.train(@train_data)
        end

        #教師あり学習から予測する
        def Classify(key_values)
                #valuesの値をJubatusのデータ構造に変換し格納する
                predict_data = KeyValues(key_values)

                result = @client.classify([getDataConstruct(predict_data)])
                return result
        end



        #学習しているすべてのラベルを返す
        def getLabels()
                @label = @client.get_labels()
                return @label
        end

end
