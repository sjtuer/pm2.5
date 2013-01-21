require "net/http"  
require "rexml/document"

uri = 'http://www.beijingaqifeed.com/shanghaiaqi/shanghaiairrss.xml'
html_response = Net::HTTP.get_response(URI.parse(uri)).body

doc = REXML::Document.new(html_response)
description = doc.elements["rss/channel/item/description"].text
puts description 
