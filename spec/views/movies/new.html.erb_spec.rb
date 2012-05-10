require 'spec_helper'

describe "movies/new.html.erb" do
  fixtures :genres, :movies
  before(:all) do

    @show_year_list = Array.new(['2012', '2013'])

    @show_month_list = Array.new
    (1..12).each do |month|
      @show_month_list.push(sprintf("%2d", month))
    end

    @show_day_list = Array.new
    (1..31).each do |day|
      @show_day_list.push(sprintf("%2d", day))
    end

    @show_hour_list = Array.new
    (0..23).each do |hour|
      @show_hour_list.push(hour.to_s)
    end

    @show_min_list = Array.new(['00', '30'])

    @genres = Genre.all
  end

  it "displays the text 'Add Movie'" do
    render
    rendered.should have_content("Add Movie")
  end

  it "displays the selectbox 'Release Year'" do
    render
    rendered.should have_content("Release Year")
    rendered.should have_selector("form") do |form|
      form.should have_selector("select", :name => "release")
    end
  end

  it "displays the selectbox 'Show Year'" do
    render
    rendered.should have_content("Show Date")
    rendered.should have_selector("form") do |form|
      form.should have_selector("select", :name => "show_year")
    end
  end

  it "displays the selectbox 'Show Month'" do
    render
    rendered.should have_selector("form") do |form|
      form.should have_selector("select", :name => "show_month")
    end
  end

  it "displays the selectbox 'Show Day'" do
    render
    rendered.should have_selector("form") do |form|
      form.should have_selector("select", :name => "show_day")
    end
  end

  it "displays the selectbox 'Show Hour'" do
    render
    rendered.should have_content("Show Time")
    rendered.should have_selector("form") do |form|
      form.should have_selector("select", :name => "show_hour")
    end
  end

  it "displays the selectbox 'Show Minutes'" do
    render
    rendered.should have_selector("form") do |form|
      form.should have_selector("select", :name => "show_min")
    end
  end

  it "displays the button 'Save'" do
    render
    rendered.should have_selector("form") do |form|
      form.should have_selector("input", :type => "submit", :name => "save")
    end
  end
end
