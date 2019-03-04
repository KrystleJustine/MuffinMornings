class CreateMuffinTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :muffin_types do |t|
      t.string :calories
      t.string :flavor

      t.timestamps
    end
  end
end
