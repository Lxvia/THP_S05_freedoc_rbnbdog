class CreateCityDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :city_dogs do |t|
      t.string :city_name

      t.timestamps
    end
  end
end
