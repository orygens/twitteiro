require 'spec_helper'

describe InfoController do
  it 'deve renderizar a view sobre' do
    get :sobre
  end

  it 'deve renderizar a view FAQ' do
    get :faq
  end

  it 'deve renderizar a view Contato' do
    get :contato
  end

  it 'deve renderizar a view Privacidade' do
    get :privacidade
  end

  it 'deve renderizar a view Termos' do 
    get :termos
  end
end
