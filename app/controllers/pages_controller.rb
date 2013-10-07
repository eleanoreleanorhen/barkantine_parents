class PagesController < ApplicationController
  def index 
 	@news = News.all
 	@birth_stories = BirthStory.all
 	@resources_and_links = ResourcesAndLink.all
  end
end
