ENV["RAILS_ENV"] ||= "test"

ENGINE_PATH = File.dirname(__FILE__)
APP_RAKEFILE = File.expand_path("../spec/dummy/Rakefile", __FILE__)

require "rspec/core/rake_task"
RSpec::Core::RakeTask.new

load 'rails/tasks/engine.rake' if File.exists?(APP_RAKEFILE)

require "refinerycms-testing"
Refinery::Testing::Railtie.load_tasks
Refinery::Testing::Railtie.load_dummy_tasks(ENGINE_PATH)
