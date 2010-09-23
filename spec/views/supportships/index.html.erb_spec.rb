require 'spec_helper'

describe "supportships/index.html.erb" do
  before(:each) do
    assign(:supportships, [
      stub_model(Supportship,
        :user_id => 1,
        :supporter_id => 1,
        :frequency => "Frequency"
      ),
      stub_model(Supportship,
        :user_id => 1,
        :supporter_id => 1,
        :frequency => "Frequency"
      )
    ])
  end

  it "renders a list of supportships" do
    render
    rendered.should have_selector("tr>td", :content => 1.to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => 1.to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Frequency".to_s, :count => 2)
  end
end
