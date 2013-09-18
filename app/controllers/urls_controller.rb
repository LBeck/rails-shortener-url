class UrlsController < ApplicationController
  def index
    @url = Url.new
    @urls = Url.all
  end

  def create
    @url = Url.new(long_url: params[:url][:long_url])
    if @url.save
      # goes to urls_controller#show
      # use rake routes to view
      # redirecting performs GET
      
      # redirect_to url_path(@url)
      redirect_to urls_path
    else
      raise StandardError
    end
  end

  # shows a particular url 
  # getting the :id from the url_path(@url)
  # controller actions don't commuincate with one another
  # and don't pass instance variables between each other
  def show
    @url = Url.find(params[:id])
  end

end