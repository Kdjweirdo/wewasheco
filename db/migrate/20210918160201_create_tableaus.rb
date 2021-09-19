class CreateTableaus < ActiveRecord::Migration[6.0]
  def change
    create_table :tableaus do |t|
      t.string :entreprise
      t.string :particulier
      t.string :nom
      t.string :email
      t.integer :numero
      t.string: description

      t.timestamps
    end
  end
end
