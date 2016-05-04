class Review < ActiveRecord::Base
  belongs_to :diary
  belongs_to :user
end
