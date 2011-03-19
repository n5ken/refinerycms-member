User.find(:all).each do |user|
  if user.plugins.find_by_name('members').nil?
    user.plugins.create(:name => 'members',
                        :position => (user.plugins.maximum(:position) || -1) +1)
  end
end
