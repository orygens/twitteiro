require 'spec_helper'

describe "campanhas/show.html.erb" do
  before(:each) do
    @campanha = assign(:campanha, stub_model(Campanha,
      :nome => "Nome",
      :premio => "Premio",
      :tweet => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain("Nome".to_s)
    rendered.should contain("Premio".to_s)
    rendered.should contain("MyText".to_s)
  end
end
