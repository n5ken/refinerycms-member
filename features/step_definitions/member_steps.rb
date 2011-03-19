Given /^I have no members$/ do
  Member.delete_all
end

Given /^I (only )?have members titled "?([^\"]*)"?$/ do |only, titles|
  Member.delete_all if only
  titles.split(', ').each do |title|
    Member.create(:email => title)
  end
end

Then /^I should have ([0-9]+) members?$/ do |count|
  Member.count.should == count.to_i
end
