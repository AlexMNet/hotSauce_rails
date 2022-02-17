class AddUserToSauces < ActiveRecord::Migration[6.1]
  def change
    add_reference :sauces, :user, null: false, foreign_key: true
  end
end
