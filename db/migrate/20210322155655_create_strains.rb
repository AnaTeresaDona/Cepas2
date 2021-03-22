class CreateStrains < ActiveRecord::Migration[6.0]
  def change
    create_table :strains do |t|
      t.string :name
      t.boolean :available, default: true

      t.timestamps
    end
  end
end
