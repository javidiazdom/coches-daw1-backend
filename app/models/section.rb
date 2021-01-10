class Section < ApplicationRecord
  belongs_to :review, optional: true
  mount_uploader :picture_url, PictureUploader
end
