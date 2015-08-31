class Newpf < ActiveRecord::Base
        mount_uploader :pf_image, S3uploaderUploader
        has_many :comments
end
