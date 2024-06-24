class CreateImages < ActiveRecord::Migration[7.2]
  def change
    create_table :images do |t|
      t.binary :data
      t.string :filename
      t.string :content_type
      t.references :data_loading, null: false, foreign_key: true

      t.timestamps
    end
  end
end
