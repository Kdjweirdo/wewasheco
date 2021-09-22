class CreateInformation < ActiveRecord::Migration[6.0]
  def change
    create_table :information do |t|
      t.string :type
      t.string :nom
      t.string :telephone
      t.string :email
      t.text :description

      t.timestamps
    end
  end
end
