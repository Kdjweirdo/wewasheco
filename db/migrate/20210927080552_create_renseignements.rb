class CreateRenseignements < ActiveRecord::Migration[6.0]
  def change
    create_table :renseignements do |t|
      t.string :entreprise
      t.string :string
      t.string :particulier
      t.string :string
      t.string :email
      t.string :string
      t.string :numero
      t.string :string
      t.string :description
      t.string :text

      t.timestamps
    end
  end
end
