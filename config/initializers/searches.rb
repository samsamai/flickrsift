require 'flickraw'
# require 'will_paginate/array'

FlickRaw.api_key = "f907fa6b3a4b68dfb7677ff05294a4a1"
FlickRaw.shared_secret = "cb7bb95062d8c950"

require 'flickr-objects'
require 'simple_oauth'

Flickr.configure do |config|
  config.api_key       = "f907fa6b3a4b68dfb7677ff05294a4a1"
  config.shared_secret = "cb7bb95062d8c950"
  config.pagination = :will_paginate
end
