class CreateItemTests < ActiveRecord::Migration[7.2]
  def change
    create_table :item_tests do |t|

      t.timestamps
    end
  end
end
