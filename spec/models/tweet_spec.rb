require 'spec_helper'

describe Tweet do
  it { should be_referenced_in(:usuario).as_inverse_of(:tweets) }
  it { should have_fields :tweet }
end
