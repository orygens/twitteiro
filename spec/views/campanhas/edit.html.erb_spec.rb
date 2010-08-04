require 'spec_helper'

describe "campanhas/edit.html.erb" do
  before(:each) do
    @campanha = assign(:campanha, stub_model(Campanha,
      :new_record? => false,
      :nome => "MyString",
      :premio => "MyString",
      :tweet => "MyText"
    ))
  end

  it "renders the edit campanha form" do
    render

    rendered.should have_selector("form", :action => campanha_path(@campanha), :method => "post") do |form|
      form.should have_selector("input#campanha_nome", :name => "campanha[nome]")
      form.should have_selector("input#campanha_premio", :name => "campanha[premio]")
      form.should have_selector("textarea#campanha_tweet", :name => "campanha[tweet]")
    end
  end
end
