class AddAvatarToFriends < ActiveRecord::Migration
  def up
    # will create avatar_file_name, avatar_file_size, avatar_content_type,
    # and avatar_updated_at attributes on the Friend model.
    add_attachment :friends, :avatar
  end

  def down
    remove_attachment :friends, :avatar
  end
end
