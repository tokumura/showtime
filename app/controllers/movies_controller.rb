# coding: utf-8

require 'thinreports'

class MoviesController < ApplicationController

  def index
    @genres = Genre.all
    @movies = Movie.order("title").page(params[:page]).per(5)



    respond_to do |format|
      format.html # index.html.erb
      format.xml { render :xml => @movie }
    end
  end

  def download
    report = ThinReports::Report.new :layout => File.join(Rails.root, 'reports', 'foo.tlf')
    report.start_new_page

    filename = "foo.pdf"
    @mvs = Movie.all
    @mvs.each do |mv|
      report.page.list(:mv_list) do |list|
        list.add_row :detail => mv.title
      end
    end
    report.generate_file("public/docs/#{filename}")
    send_file("public/docs/#{filename}")
  end

  def show
    @movie = Movie.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.xml { render :xml => @movie }
    end
  end

  def new
    @genres = Genre.all
    @movie = Movie.new

    @show_year_list = Array.new(['2012', '2013'])

    @show_month_list = Array.new
    (1..12).each do |month|
      @show_month_list.push(sprintf("%02d", month))
    end

    @show_day_list = Array.new
    (1..31).each do |day|
      @show_day_list.push(sprintf("%02d", day))
    end

    @show_hour_list = Array.new
    (0..23).each do |hour|
      @show_hour_list.push(hour.to_s)
    end

    @show_min_list = Array.new(['00', '30'])

    respond_to do |format|
      format.html # new.html.erb
      format.xml { render :xml => @movie }
    end
  end

  def create
    @movie= Movie.new(
      :title => params[:title], 
      :genre_id => params[:genre_id],
      :showtime_date => params[:show_year] + "-" + 
                        params[:show_month] + "-" + 
                        params[:show_day],
      :showtime_time => params[:show_hour] + ":" + 
                        params[:show_min]
    )
    respond_to do |format|
      if @movie.save
        format.html { redirect_to(movies_path) }
        format.xml  { head :ok }
      else
        format.html { redirect_to(movies_path) }
        format.xml  { head :ok }
      end
    end
  end
=begin
=end

end
