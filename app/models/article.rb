class Article < ApplicationRecord
    mount_uploader :picture, PictureUploader

    validates :title, 
        presence: true, length: { maximum: 25 }
end
