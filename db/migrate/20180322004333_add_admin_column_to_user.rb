class AddAdminColumnToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :user, :admin, :boolean, :default =>false
    #NOT MIGRATED! NEED TO FIX ERRORS TO MIGRATE TO CREATE ADMIN STATUS IN USER TABLE
  end
end
