class Role < ApplicationRecord
  serialize :permission, Hash
  validates :name, :permissions, :type, presence: true
end
