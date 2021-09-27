class CreateRenseignements < ActiveRecord::Migration[6.0]
  def change
    create_table :renseignements do |t|
      t.string :entreprise
      t.string :particulier
      t.string :email
      t.string :numero
      t.string :description
      t.string :text

      t.timestamps
    end
  end
end
