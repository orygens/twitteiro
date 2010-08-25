require 'spec_helper'

describe Tweet do
  it { should be_referenced_in(:usuario).as_inverse_of(:tweets) }
  it { should embed_one :usuario }
  it { should have_fiels :tweet }
end
