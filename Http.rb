require 'net/http'
require 'uri'

class Http
  def http_get_body(url)
    url = URI.parse(url)
    http = Net::HTTP.new(url.host, url.port)

    # デバック用
		puts "ホスト名 #{url.host}"
    puts "ポート番号: #{url.port}"
    
    if url.scheme = 'https'
      http.use_ssl = true
    end

    res = http.start
    if url.path.empty?
      res = res.get('/').body
    else
      res = res.get(url.path).body
    end
    
    return res
  end
end



