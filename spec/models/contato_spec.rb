require 'spec_helper'

describe Contato do
  it { should have_fiels :tweet,  }
  it { should validate_presence_of :nome, :email, :mensagem}
end
