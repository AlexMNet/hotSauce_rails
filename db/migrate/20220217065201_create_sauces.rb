class CreateSauces < ActiveRecord::Migration[6.1]
  def change
    create_table :sauces do |t|
      t.string :title
      t.integer :qty

      t.timestamps
    end
  end
end
