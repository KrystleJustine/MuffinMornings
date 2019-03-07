class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :muffin_type, foreign_key: true
      t.belongs_to :day, foreign_key: true
      t.text :review
      t.integer :stars
      t.string :muffin_url
      t.string :title

      t.timestamps
    end
  end
end
