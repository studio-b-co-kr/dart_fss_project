require 'net/http'

module MarketDataUpdatable
  # extend ActiveSupport::Concern

  # class_methods do
    def get_Dart_API_data
      uri = URI('http://dart.fss.or.kr/api/search.json?auth=7a86da6c626c9dbf562657e1a97b882253eaf9b3&crp_cd=036260')
      Net::HTTP.start(uri.host, uri.port) do |http|
        request = Net::HTTP::Get.new uri
        response = http.request request # Net::HTTPResponse object
      end
    end
  # end
end


