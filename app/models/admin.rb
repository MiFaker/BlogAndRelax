class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable, :confirmable

  has_many :action_logs, as: :creator, dependent: :destroy

  def create_action_log! target_object, action, user_agent = nil
    action_logs.create target_id: target_object.id,
      target_type: target_object.class.name, action_name: action,
      ip_address: current_sign_in_ip, user_agent: user_agent
  end
end
