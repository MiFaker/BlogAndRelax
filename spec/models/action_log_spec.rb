require "rails_helper"

RSpec.describe ActionLog, type: :model do
  describe "action_log validating" do
    let(:action_log){FactoryGirl.build :action_log}
    subject{action_log}

    context "target_id not present" do
      before{action_log.target_id = nil}
      it{is_expected.to have(1).error_on(:target_id)}
    end

    context "target_type not present" do
      before{action_log.target_type = nil}
      it{is_expected.to have(1).error_on(:target_type)}
    end

    context "creator_id not present" do
      before{action_log.creator_id = nil}
      it{is_expected.to have(1).error_on(:creator_id)}
    end

    context "creator_type not present" do
      before{action_log.creator_type = nil}
      it{is_expected.to have(1).error_on(:creator_type)}
    end

    context "action_name not present" do
      before{action_log.action_name = nil}
      it{is_expected.to have(1).error_on(:action_name)}
    end
  end
end
