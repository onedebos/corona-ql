class DropCountriesSummaries < ActiveRecord::Migration[6.0]
  def change
    drop_table :countries_summaries
  end
end
