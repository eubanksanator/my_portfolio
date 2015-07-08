require 'open-uri'
require 'json'

class PortfolioController < ApplicationController
  def home
    url = "https://teamtreehouse.com/traviseubanks.json"

    open_url = open(url).read
    json_parsed_data = JSON.parse(open_url)

    @badges = json_parsed_data['badges']
    @points = json_parsed_data['points']
  end
end

