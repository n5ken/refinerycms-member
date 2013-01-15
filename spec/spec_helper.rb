require "refinery/testing"

root = File.expand_path("..", __FILE__)

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[File.join(root, "spec/support/**/*.rb")].each {|f| require f}

require File.expand_path("../dummy/spec/spec_helper", __FILE__)
