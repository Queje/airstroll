class AddCity < ActiveRecord::Migration[6.0]
  def change
    add_reference :dogsitters, :city , foreign_key: true
    add_reference :dogs, :city, foreign_key: true
  end
end