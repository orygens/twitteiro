require 'spec_helper'

describe Usuario do
  it { should validate_presence_of :username }
  it { should validate_presence_of :vezes }
  it { should validate_numericality_of :vezes }
end
