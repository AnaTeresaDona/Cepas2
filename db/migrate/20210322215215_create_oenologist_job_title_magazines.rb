class CreateOenologistJobTitleMagazines < ActiveRecord::Migration[6.0]
  def change
    create_table :oenologist_job_title_magazines do |t|
      t.references :oenologist, null: false, foreign_key: true
      t.references :job_title, null: false, foreign_key: true
      t.references :magazine, null: false, foreign_key: true

      t.timestamps
    end
  end
end
