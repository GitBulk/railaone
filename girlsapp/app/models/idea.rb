class Idea < ActiveRecord::Base
    # map picture field in Idea table with PictureUploader
    mount_uploader :picture, PictureUploader
end
