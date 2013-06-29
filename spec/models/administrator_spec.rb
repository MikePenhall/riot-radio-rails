require 'spec_helper'

describe Administrator do
  subject do
    build(:administrator)
  end

  describe "included Devise modules" do

    it "should be recoverable" do
      subject.class.included_modules.should include Devise::Models::Recoverable
    end

    it "should be rememberable" do
      subject.class.included_modules.should include Devise::Models::Rememberable
    end

    it "should be trackable" do
      subject.class.included_modules.should include Devise::Models::Trackable
    end

    it "should be validatable" do
      subject.class.included_modules.should include Devise::Models::Validatable
    end

    it "should not be registerable" do
      subject.class.included_modules.should_not include Devise::Models::Registerable
    end
  end


end
