class CreateDataLoadings < ActiveRecord::Migration[7.2]
  def change
    create_table :data_loadings do |t|
      t.string :ahf
      t.string :nombre
      t.string :otros_campos

      t.timestamps
    end
  end
end
