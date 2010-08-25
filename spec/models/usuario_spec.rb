require 'spec_helper'

describe Usuario do
  it { should reference_many :tweets }
  it { should embed_many :tweets }
  it { should validate_presence_of :username, :vezes }
  it { should validate_numericality_of :vezes }
end
