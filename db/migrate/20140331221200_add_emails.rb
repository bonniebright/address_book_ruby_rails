class AddEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.column :email, :string
      t.column :label, :string

      t.timestamps
    end
  end
end
