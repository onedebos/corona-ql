module Types
  class QueryType < Types::BaseObject
    field :summaries, [Types::SummaryType], null: false
    field :all_countries, [Types::CountryType], null: false
    field :find_country, [CountryType], null: true do
      argument :country_name, String, required: true
    end
    field :all_countries_limit, [CountryType], null: false do
      argument :per_page, Integer, required: false, default_value: 10
      argument :start, Integer, required: false, default_value: 1
    end
    field :country_filter, [CountryType], null: false do
      argument :text, String, required: true
    end

      
    def all_countries_limit(per_page:,start:)
      country = Country.limit(per_page).offset(start - 1)
    end

    def all_countries
      Country.all.order(country_name: :asc)
    end

    def country_filter(text:)
      Country.where("country_name LIKE ?", "%#{text.downcase}%")
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
