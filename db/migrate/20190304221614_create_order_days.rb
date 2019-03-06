class CreateOrderDays < ActiveRecord::Migration[5.2]
  def change
    create_table :order_days do |t|
      t.belongs_to :day, foreign_key: true
      t.belongs_to :order, foreign_key: true

      t.timestamps
    end
  end
end
