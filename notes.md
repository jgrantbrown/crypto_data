



REMINDER ON USING uri

require 'uri'
require 'net/http'

def coin_data(coin)
    url = URI(`https://pro-api.coinmarketcap.com/v1/cryptocurrency/quotes/latest?symbol=#{coin}BTC`)

    http = Net::HTTP.new(url.host, url.port)

    request = Net::HTTP::Get.new(url)
    request["X-CMC_PRO_API_KEY"] = ENV[API_KEY]
    request["cache-control"] = 'no-cache'
    request["Postman-Token"] = '7ca90e23-5988-4619-9ec8-40a4d0ce5562'

    response = http.request(request)
    puts response.read_body
end
