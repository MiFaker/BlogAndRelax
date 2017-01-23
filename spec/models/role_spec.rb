require 'rails_helper'

RSpec.describe Role, type: :model do
  describe "role validating" do
    let(:role){FactoryGirl.build :role}
    subject{role}

    context "when all of attributes are fully present" do
      it{is_expected.to be_valid}
    end

    context "when name not present" do
      before{role.name = nil}
      it{is_expected.to have(1).error_on(:name)}
    end

    context "when permissions not present" do
      before{role.permissions = nil}
      it{is_expected.to have(1).error_on(:permissions)}
    end

    context "when type not present" do
      before{role.type = nil}
      it{is_expected.to have(1).error_on(:type)}
    end
  end
end
