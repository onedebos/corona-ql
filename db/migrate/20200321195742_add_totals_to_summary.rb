class AddTotalsToSummary < ActiveRecord::Migration[6.0]
  def change
    add_column :summaries, :total_cases, :integer
    add_column :summaries, :total_deaths, :integer
    add_column :summaries, :total_recovered, :integer
  end
end
