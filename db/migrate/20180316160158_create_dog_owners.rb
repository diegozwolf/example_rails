class CreateDogOwners < ActiveRecord::Migration[5.1]
  def change
    create_table :dog_owners do |t|
      t.integer :dog_id
      t.integer :owner_id
      
      t.timestamps
    end
  end
end
