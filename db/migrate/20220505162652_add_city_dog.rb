class AddCityDog < ActiveRecord::Migration[5.2]
  def change
    add_reference :dogs, :city_dog, foreign_key: true
    add_reference :dogsitters, :city_dog, foreign_key: true
    add_reference :strolls, :city_dog, foreign_key: true
  end
end
