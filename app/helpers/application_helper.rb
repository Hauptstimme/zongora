module ApplicationHelper
  def connect_lastfm_path
    "http://www.last.fm/api/auth/?api_key=#{ENV["LASTFM_API_KEY"]}&cb=#{CGI.escape("http://hauptstimme.github.io")}"
  end
end
