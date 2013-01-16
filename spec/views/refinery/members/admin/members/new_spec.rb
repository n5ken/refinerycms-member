require "spec_helper"

describe "/refinery/members/admin/members/new" do
  subject { render }

  before do
    assign(:member, Refinery::Members::Member.new)
    view.stub(from_dialog?: false)
  end

  it { should have_css "form[action='/refinery/members']" }
end
