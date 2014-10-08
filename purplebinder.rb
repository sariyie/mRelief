require 'open-uri'
require 'json'

complete_dataset = []
100.times do |num|
  num = num + 1
  url = "http://app.purplebinder.com/api/v2/search?page="+num.to_s
  raw_data = open(url).read
  parsed_data = JSON.parse(raw_data)


    parsed_data.each do |service_center|

     ServiceCenter.create(
       name: service_center.name,
       latitude: service_center["coordinates"][0],
       longitude: service_center["coordinates"][1],
       street: service_center["address"]["street"],
       city: service_center["address"]["city"],
       state: service_center["address"]["state"],
       zip: service_center["address"]["zip"],
       phone: service_center["phones"][0]["number"],
       organization_id: service_center["organization"]["id"]
     )
     Organization.create(
       organization_id: service_center["organization"]["id"],
       name: service_center["organization"]["name"],
       url: service_center["organization"]["url"]
     )
     puts "looped through one time"
  end
end
#food = []
 # parsed_data.each do |service_center|
 #    if food.count <= 1
 #      short_desc = service_center["short_desc"]
 #      if short_desc.include?("counseling")
 #         food.push(service_center)

 #      end
 #    end
 #  end


# food[0]["phones"][0]["number"]
