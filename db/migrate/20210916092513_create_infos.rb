class CreateInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :infos do |t|
      t.string :entreprise
      t.string :particulier
      t.string :nom
      t.string :email
      t.integer :numero
      t.text :description

      t.timestamps
    end
  end
end
