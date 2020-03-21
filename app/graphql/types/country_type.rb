module Types
  class CountryType < Types::BaseObject
   field :id, ID, null: false
   field :country_name, String, null: false
   field :link_name, String, null: false
   field :cases, Integer, null: false
   field :cases_today, Integer, null: false
   field :deaths, Integer, null: false
   field :deaths_today, Integer, null: false
   field :recovered, Integer, null: false
   field :active, Integer, null: false
   field :critical, Integer, null: false
   field :last_updated_at, Integer, null: false

  def request
    base_url = "https://corona.lmao.ninja/countries/#{object.link_name}"
    request = HTTParty.get(base_url).body
  end

   def cases
      response = JSON.parse(request)["cases"]
    end

    def cases_today
      response = JSON.parse(request)["todayCases"]
    end

    def deaths
      response = JSON.parse(request)["deaths"]
    end

    def deaths_today
      response = JSON.parse(request)["todayDeaths"]
    end

    def recovered
      response = JSON.parse(request)["recovered"]
    end

    def active
      response = JSON.parse(request)["active"]
    end

    def critical
      response = JSON.parse(request)["critical"]
    end

    def last_updated_at
      response = JSON.parse(request)["updated"]
    end

  end
end
