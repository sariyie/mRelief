require 'open-uri'
require 'json'

class ServiceCentersController < ApplicationController

  def index
    complete_dataset = []
    100.times do |num|
      num = num + 15
      url = "http://app.purplebinder.com/api/v2/search?page="+num.to_s
      raw_data = open(url).read
      parsed_data = JSON.parse(raw_data)


        parsed_data.each do |service_center|

         ServiceCenter.create(
           name: service_center["name"],
           latitude: service_center["coordinates"][0],
           longitude: service_center["coordinates"][1],
           street: service_center["address"]["street"],
           city: service_center["address"]["city"],
           state: service_center["address"]["state"],
           zip: service_center["address"]["zip"],
           phone: service_center["phones"][0]["number"],
           organization: service_center["organization"]["id"],
           description: service_center["short_desc"]
         )
         Organization.create(
           organization_id: service_center["organization"]["id"],
           name: service_center["organization"]["name"],
           url: service_center["organization"]["url"]
         )
         puts "looped through #{num} time"
      end
    end
  end
end
