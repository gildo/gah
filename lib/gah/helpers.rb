require 'net/http'
require 'uri'

module Helpers

  def gapi(api)
    uri = URI.parse("http://github.com/api/v2/json#{api}")
    http = Net::HTTP.new(uri.host, uri.port)
    request = Net::HTTP::Get.new(uri.request_uri)

    response = http.request(request)
    body = JSON.parse(response.body)

    if body.has_key? "error"
      raise "#{uri}"
    end

    return body
  end
end