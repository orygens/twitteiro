require 'spec_helper'

describe "campanhas/index.html.erb" do
  before(:each) do
    assign(:campanhas, [
      stub_model(Campanha,
        :nome => "Nome",
        :premio => "Premio",
        :tweet => "MyText"
      ),
      stub_model(Campanha,
        :nome => "Nome",
        :premio => "Premio",
        :tweet => "MyText"
      )
    ])
  end

  it "renders a list of campanhas" do
    render
    rendered.should have_selector("tr>td", :content => "Nome".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Premio".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "MyText".to_s, :count => 2)
  end
end
