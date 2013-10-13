class PagesController < ApplicationController
  def index 
 	@news = News.first
 	@birth_stories = BirthStory.first
 	@resources_and_links = ResourcesAndLink.first
  end
end
