#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
require 'json'
require 'jubatus/classifier/client'

class MachineLearning
        @client

        def getDataConstruct(key_values)
                return Jubatus::Common::Datum.new(key_values)
        end

        def KeyValues(key_values)
                hash_data = Hash.new()
                for i in 0 .. key_values.length - 1 do
                        hash_data["#{key_values[i][0]}"] = key_values[i][1]
                end
                return hash_data
        end
end
     
