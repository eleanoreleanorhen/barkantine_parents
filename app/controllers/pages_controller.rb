class PagesController < ApplicationController
  def index 
 	@news = News.all
 	@birth_stories = BirthStory.all
  end
end
