require File.expand_path('../config/application', __FILE__)
require 'rake'

begin
  require 'delayed/tasks'
rescue LoadError
  STDERR.puts 'Execute `bundle install` para instalar o delayed_job'
end

Twitteiro::Application.load_tasks
