class AddLinkNameToCountries < ActiveRecord::Migration[6.0]
  def change
    add_column :countries, :link_name, :string
  end
end
