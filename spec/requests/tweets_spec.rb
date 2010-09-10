require 'spec_helper'

describe 'Tweets' do
  describe 'GET /tweets' do
    it 'Request com sucesso (200)' do
      get tweets_path
    end
  end
end
