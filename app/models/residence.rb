class Residence < ApplicationRecord
    mount_uploader :video, VideoUploader
    
    mount_uploader :image, VimeoUploader

    mount_uploader :vimeo_file, VimeoUploader

    belongs_to :user
    has_many :comments, dependent: :destroy
end
