require "spec_helper"

describe "/refinery/admin/members/index" do
  subject { render }

  let(:member) { FactoryGirl.create(:refinery_member) }

  before do
    view.stub(refinery_icon_tag: "")
  end

  before do
    view.stub(searching?: false)
    view.stub(from_dialog?: false)
    assign(:members, [member])
  end

  it { should have_css "#member_#{member.id}" }
end
