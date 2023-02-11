require 'httparty'

class ITunesSearchAPI
  include HTTParty
  base_uri 'http://ax.itunes.apple.com/WebObjects/MZStoreServices.woa/wa'
  format :json

  class << self
    def search(query={})
      get("/wsSearch", :query => query)["results"]
    end

    def lookup(query={})
      get("/wsLookup", :query => query)["results"]
    end
  end
end
