class Article < ApplicationRecord
  belongs_to :user

  mount_uploader :video, VideoUploader

  validates :title, presence: true, length: { maximum: 255 }
  validates :video, presence: true
end
