Gem::Specification.new do |s|
  s.platform          = Gem::Platform::RUBY
  s.name              = 'refinerycms-members'
  s.version           = '0.2.1'
  s.summary           = 'Members engine for Refinery CMS'
  s.description       = 'Ruby on Rails Members engine for Refinery CMS 2.0'
  s.authors           = ['n5ken', 'cordawyn']
  s.homepage          = "https://github.com/cordawyn/refinerycms-member"
  s.require_paths     = %w(lib)
  s.files             = Dir['lib/**/*', 'config/**/*', 'app/**/*']
end
