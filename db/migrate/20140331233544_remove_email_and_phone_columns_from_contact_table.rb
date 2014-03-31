class RemoveEmailAndPhoneColumnsFromContactTable < ActiveRecord::Migration
  def change
    remove_column :contacts, :email
    remove_column :contacts, :phone
  end
end
