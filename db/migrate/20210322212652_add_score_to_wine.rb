class AddScoreToWine < ActiveRecord::Migration[6.0]
  def change
    add_column :wines, :score, :integer
  end
end
