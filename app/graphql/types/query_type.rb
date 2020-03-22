module Types
  class QueryType < Types::BaseObject
    field :all_countries, [Types::CountryType], null: false
    field :summaries, [Types::SummaryType], null: false
    field :find_country, [CountryType], null: true do
      argument :country_name, String, required: true
    end
    
      
    def all_countries
      country = Country.all
    end

    def summaries
      Summary.all
    end

    def find_country(country_name:)
      country_name = country_name.downcase
      Country.where(country_name: country_name)
    end


  end
end
