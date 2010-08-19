require 'test_helper'
require 'rails/performance_test_help'

class BrowsingTest < ActionDispatch::PerformanceTest
  def test_homepage
    get '/'
  end

  def test_usuarios_path
    get '/usuarios'
  end

  def test_tweets_path
    get '/tweets'
  end

  def test_admin_path
    get '/admin'
  end
end
