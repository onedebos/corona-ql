class RemoveCasesFromCountry < ActiveRecord::Migration[6.0]
  def change

    remove_column :countries, :cases_today, :string

    remove_column :countries, :cases, :string

    remove_column :countries, :integer, :string

    remove_column :countries, :total_deaths, :string

    remove_column :countries, :deaths_today, :string

    remove_column :countries, :recovered, :string

    remove_column :countries, :active, :string

    remove_column :countries, :critical, :string
  end
end
