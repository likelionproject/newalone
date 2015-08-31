class Performanceinfo < ActiveRecord::Base
    mount_uploader :team_pic, S3uploader1Uploader
end
