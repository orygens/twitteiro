require 'spec_helper'

describe "supportships/show.html.erb" do
  before(:each) do
    @supportship = assign(:supportship, stub_model(Supportship,
      :user_id => 1,
      :supporter_id => 1,
      :frequency => "Frequency"
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain(1.to_s)
    rendered.should contain(1.to_s)
    rendered.should contain("Frequency".to_s)
  end
end
