# -*- encoding:utf-8 -*-
require 'spec_helper'

describe 'Specs de tweets/edit.html.erb' do
  before(:each) do
    @tweet = assign(:tweet, stub_model(Tweet,
      :new_record? => false,
      :tweet => 'Meu tweet!'
    ))
  end

  it 'renderiza forma' do
  end
end
