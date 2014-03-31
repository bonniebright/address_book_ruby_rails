class EditPhonesToAddLabel < ActiveRecord::Migration
  def change
    add_column :phones, :label, :string
  end
end
