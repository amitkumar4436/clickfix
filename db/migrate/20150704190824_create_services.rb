class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.text :name
      t.text :description
      t.string :min_price
      t.string :max_price
      t.timestamps 
    end
  end
end
