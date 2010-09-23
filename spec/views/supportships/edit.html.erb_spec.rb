require 'spec_helper'

describe "supportships/edit.html.erb" do
  before(:each) do
    @supportship = assign(:supportship, stub_model(Supportship,
      :new_record? => false,
      :user_id => 1,
      :supporter_id => 1,
      :frequency => "MyString"
    ))
  end

  it "renders the edit supportship form" do
    render

    rendered.should have_selector("form", :action => supportship_path(@supportship), :method => "post") do |form|
      form.should have_selector("input#supportship_user_id", :name => "supportship[user_id]")
      form.should have_selector("input#supportship_supporter_id", :name => "supportship[supporter_id]")
      form.should have_selector("input#supportship_frequency", :name => "supportship[frequency]")
    end
  end
end
