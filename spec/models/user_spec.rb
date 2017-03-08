require "rails_helper"

RSpec.describe User, type: :model do
  describe "#create_action_logs!" do
    let(:user){FactoryGirl.create :user}
    context "when create action_log successfully" do
      it do
        expect{user.create_action_log!(user, "login")}
          .to change{ActionLog.count}.from(0).to 1
      end
    end

    context "when create action_log fail" do
      it do
        expect{user.create_action_log!("login")}
          .to raise_error(ArgumentError)
      end
      it do
        expect{user.create_action_log!(user)}
          .to raise_error(ArgumentError)
      end
    end
  end
end
