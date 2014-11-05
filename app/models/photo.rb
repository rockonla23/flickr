class Photo < ActiveRecord::Base
  mount_uploader :path, PhotoUploader
  belongs_to :album
end