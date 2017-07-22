class Idea < ActiveRecord::Base

    has_many :comments

    # map picture field in Idea table with PictureUploader
    mount_uploader :picture, PictureUploader
    validate :picture_size_validation

    private
        def picture_size_validation
            errors[:picture] << "Should be less than 500KB" if picture.size > 0.5.megabytes
        end

end
