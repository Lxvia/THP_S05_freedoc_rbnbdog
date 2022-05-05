class ModifySpecialties < ActiveRecord::Migration[5.2]
  def change
    create_join_table :doctors, :specialties #Raccourci pour code ci-dessous

    #create_table :doctors_specialties do |t|
    #  t.belongs_to :doctor, index: true
    #  t.belongs_to :specialty, index: true
    #end

    remove_column :doctors, :specialty, :string
  end
end
