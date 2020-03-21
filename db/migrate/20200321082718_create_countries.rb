class CreateCountries < ActiveRecord::Migration[6.0]
  def change
    create_table :countries do |t|
      t.integer :cases
      t.string :cases_today
      t.string :integer
      t.integer :total_deaths
      t.integer :deaths_today
      t.integer :recovered
      t.integer :active
      t.integer :critical

      t.timestamps
    end
  end
end
