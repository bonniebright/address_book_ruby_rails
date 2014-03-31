class EditPhonesNumberToString < ActiveRecord::Migration
  def change
    change_column(:phones, :number, :string)
  end
end
