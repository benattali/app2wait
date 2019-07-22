class RenameGroupUsersToGroupsUsers < ActiveRecord::Migration[5.2]
  def change
    rename_table :group_users, :groups_users
  end
end
