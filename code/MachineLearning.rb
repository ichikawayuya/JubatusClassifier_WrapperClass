#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
require 'json'
require 'jubatus/classifier/client'

class MachineLearning
        @client

        #Jubatusサーバにつなぐ
        def ServerConect(host, port, name)
                #@client = Jubatus::Classifier::Client::Classifier.new(host, port, name)        
        end
        def getDataConstruct(key, value)
                return Jubatus::Common::Datum.new("#{key}" => value )
        end
end
