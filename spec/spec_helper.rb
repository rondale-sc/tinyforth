require 'bundler/setup'
require_relative './build_helper'

RSpec.configure do |config|
  config.before(:all) do
    BuildHelper.build
  end
end

require File.expand_path('./lib/tinyforth')
