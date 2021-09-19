class AddDescriptionToTableau < ActiveRecord::Migration[6.0]
  def change
    add_column :tableaus, :description, :string
  end
end
