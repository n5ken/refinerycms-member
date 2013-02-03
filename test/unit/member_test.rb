require 'test_helper'

describe Refinery::Member do
  subject { Refinery::Member.new }

  it { should_not be_valid }
end
