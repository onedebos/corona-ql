class AddNameToCountriesSummary < ActiveRecord::Migration[6.0]
  def change
    add_column :countries_summaries, :name, :string
  end
end
