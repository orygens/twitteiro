require 'spec_helper'

describe "campanhas/new.html.erb" do
  before(:each) do
    assign(:campanha, stub_model(Campanha,
      :new_record? => true,
      :nome => "MyString",
      :premio => "MyString",
      :tweet => "MyText"
    ))
  end

  it "renders new campanha form" do
    render

    rendered.should have_selector("form", :action => campanhas_path, :method => "post") do |form|
      form.should have_selector("input#campanha_nome", :name => "campanha[nome]")
      form.should have_selector("input#campanha_premio", :name => "campanha[premio]")
      form.should have_selector("textarea#campanha_tweet", :name => "campanha[tweet]")
    end
  end
end
