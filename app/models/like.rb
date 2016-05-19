class Like < ActiveRecord::Base
  belongs_to :user
  belongs_to :diary, counter_cache: :likes_count
end
