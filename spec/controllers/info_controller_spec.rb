require 'spec_helper'

describe InfoController do
  it 'deve renderizar a view sobre' do
    get :sobre
    response.should be_success
  end

  it 'deve renderizar a view FAQ' do
    get :faq
    response.should be_success
  end

  it 'deve renderizar a view Contato' do
    get :contato
    response.should be_success
  end

  it 'deve renderizar a view Privacidade' do
    get :privacidade
    response.should be_success
  end

  it 'deve renderizar a view Termos' do 
    get :termos
    response.should be_success
  end
end
