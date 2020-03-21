require 'httparty'

Summary.create(id:1)

def get_countries
    country_names = []
    base_url = "https://corona.lmao.ninja/countries"
    request = HTTParty.get(base_url).body
    response = JSON.parse(request)
    response.each_with_index do |c, i|
        country_name = lowercase_country_name(response[i]["country"])
        Country.create(country_name: country_name, link_name: country_name)
    end
    update_link_name("s. korea", "korea")
    update_link_name("saudi arabia", "saudi")
    update_link_name("south africa", "south")
    update_link_name("san marino", "marino")
    update_link_name("costa rica", "costa")
    update_link_name("dominican republic", "dominican")
    update_link_name("faeroe islands", "island")
    update_link_name("north macedonia", "macedonia")
    update_link_name("diamond princess", "princess")
    update_link_name("bosnia and herzegovina", "bosnia")
    update_link_name("sri lanka", "sri")
    update_link_name("burkina faso", "burkina")
    update_link_name("trinidad and tobago", "trinidad")
    update_link_name("french guiana", "french")
    update_link_name("Puerto Rico", "puerto")
    update_link_name("french polynesia", "polynesia")
    update_link_name("channel islands", "channel")
    update_link_name("ivory coast", "ivory")
    update_link_name("equatorial guinea", "equatorial")
    update_link_name("u.s. virgin islands", "virgin")
    update_link_name("new caledonia", "caledonia")
    update_link_name("saint martin", "martin")
    update_link_name("cayman islands", "cayman")
    update_link_name("El Salvador", "Salvador")
    update_link_name("Cabo Verde", "cabo")
    update_link_name("St. Barth", "barth")
    update_link_name("Saint Lucia", "Lucia")
    update_link_name("Antigua and Barbuda", "Antigua")
    update_link_name("Vatican City", "vatican")
    update_link_name("Papua New Guinea", "papua")
    update_link_name("St. Vincent Grenadines", "vincent")
    update_link_name("Sint Maarten", "sint")
    update_link_name("Timor-Leste", "timor")
    update_link_name("New Zealand", "new")
end

def update_link_name(country_name, new_link)
    country_name = country_name.downcase
    country = Country.find_by(country_name: country_name)
    country.update(link_name: new_link.downcase)
end

def lowercase_country_name(country_name)
    country_name.downcase
end






get_countries




