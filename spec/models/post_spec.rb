require 'spec_helper'

describe Post do
  subject do
    create(:post)
  end

  it { should validate_presence_of :title }
  it { should validate_presence_of :body }
  it { should validate_uniqueness_of :slug }

end
