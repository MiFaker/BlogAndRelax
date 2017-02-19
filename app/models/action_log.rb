class ActionLog < ActiveRecord::Base
  validates :target_id, :target_type, :creator_id,
    :creator_type, :action_name, presence: true
  belongs_to :creator, polymorphic: true
end
