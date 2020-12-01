require 'net/http'
require 'json'
require 'open-uri'




class GetTrains

    def self.base_url
        "http://lapi.transitchicago.com/api/1.0/ttpositions.aspx?key=36557c9199074ce6bf7440ac09775494&rt=red&rt=blue&rt=pink&rt=g&rt=p&rt=y&rt=org&rt=brn&outputType=JSON"
    end

    def self.load_data
        response = RestClient.get(base_url)
        data = JSON.parse(response.body)
        route = data["ctatt"]["route"]
        route.each do |route_data|
        name = route_data["@name"]
        route_data["train"].each do |train_data|
        TrainInfo.new(train_data, name)
        end if route_data["train"]
        
        end
        

    end

end

# class GetStations

#     def self.base_url
#         "https://data.cityofchicago.org/resource/8pix-ypme.json"
#     end

#     def self.load_data
#         response = RestClient.get(base_url)
#         data = JSON.parse(response.body)
#         # data.map { |key, value| }
#         arry = {data=>"station_info"}.to_a
#         arry.each do |k, v|
#         binding.pry
#         end
#     end
# end