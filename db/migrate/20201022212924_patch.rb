class Patch < ActiveRecord::Migration[6.0]
  def change
    add_reference :strolls, :dog, foreign_key: true
    add_reference :strolls, :dogsitter, foreign_key: true
    add_reference :strolls, :city, foreign_key: true
  end
end
