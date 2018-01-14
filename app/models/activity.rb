class Activity < ApplicationRecord
  belongs_to :user
  belongs_to :activity_list
end
