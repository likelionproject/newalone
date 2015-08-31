class Comment < ActiveRecord::Base
    belongs_to :newpf
    has_many :replies
end
