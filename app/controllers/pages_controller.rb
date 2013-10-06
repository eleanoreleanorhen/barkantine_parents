class PagesController < ApplicationController
  def index 
 	@news = News.all
  end
end
