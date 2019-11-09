class GroupUser < ApplicationRecord
  sbelongs_to :group
  belongs_to :user
end
