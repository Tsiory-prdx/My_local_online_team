class Comment < ApplicationRecord
    has_many :like_with_gossip_and_comments
    has_many :comment_bis
end
