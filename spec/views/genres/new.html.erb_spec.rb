require 'spec_helper'

describe "genres/new.html.erb" do
  it "displays the textbox" do
    render
    rendered.should have_selector("form") do |form|
      form.should have_selector("input", :type => "text", :name => "name")
    end
  end
  it "displays the button 'Save'" do
    render
    rendered.should have_selector("form") do |form|
      form.should have_selector("input", :type => "submit", :value => "Save")
    end
  end
end
