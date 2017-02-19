require "rails_helper"

RSpec.describe Admin, type: :model do
  describe "#create_action_logs!" do
    let(:admin){FactoryGirl.create :admin}
    context "when create action_log successfully" do
      it do
        expect{admin.create_action_log!(admin, "login")}
          .to change{ActionLog.count}.from(0).to 1
      end
    end

    context "when create action_log fail" do
      it do
        expect{admin.create_action_log!("login")}
          .to raise_error(ArgumentError)
      end
      it do
        expect{admin.create_action_log!(admin)}
          .to raise_error(ArgumentError)
      end
    end
  end
end
