class Photo < ActiveRecord::Base
  belongs_to :user
  attr_accessible :decription, :path, :title
  mount_uploader :path, PhotoUploader
end
