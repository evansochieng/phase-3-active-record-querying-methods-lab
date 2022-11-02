class AddSeasonToShows < ActiveRecord::Migration[6.1]
  #add season column to the shows table
  def change
    add_column :shows, :season, :string
  end
end
