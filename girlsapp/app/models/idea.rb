class Idea < ActiveRecord::Base

    validates_processing_of :picture
    validates :picture_size_validation

    has_many :comments

    # map picture field in Idea table with PictureUploader
    mount_uploader :picture, PictureUploader

    private
        def picture_size_validation
            errors[:image] << "Should be less than 500KB" if picture.size > 0.5.megabytes
        end

end
