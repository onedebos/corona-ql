require 'httparty'


def get_countries
    country_names = []
    base_url = "https://coronavirus-19-api.herokuapp.com/countries"
    request = HTTParty.get(base_url).body
    response = JSON.parse(request)
    response.each_with_index do |c, i|
        Country.create(country_name: response[i]["country"])
    end
end



get_countries

Summary.create(id:1)