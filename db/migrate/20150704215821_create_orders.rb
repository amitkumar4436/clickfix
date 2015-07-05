class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
    	t.string :name
    	t.text :address
    	t.date :date
    	t.string :email
    	t.string :phone_number
    	t.timestamps 
    end
  end
end