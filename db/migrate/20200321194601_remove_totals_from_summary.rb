class RemoveTotalsFromSummary < ActiveRecord::Migration[6.0]
  def change

    remove_column :summaries, :total_cases, :string

    remove_column :summaries, :total_deaths, :string

    remove_column :summaries, :total_recovered, :string
  end
end
