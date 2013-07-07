require 'spec_helper'

describe Post do
  subject do
    build(:post)
  end

  it { should validate_presence_of :title }
  it { should validate_presence_of :body }
  it { should validate_presence_of :slug }
  it { should validate_uniqueness_of :slug }
end
