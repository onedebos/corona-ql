class CreateCountriesSummaries < ActiveRecord::Migration[6.0]
  def change
    create_table :countries_summaries do |t|

      t.timestamps
    end
  end
end
