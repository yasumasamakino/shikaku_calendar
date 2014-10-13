class TopController < ApplicationController
  def index
  	paramKeywords = params[:q]
  	if paramKeywords.blank? then 
	    @shikakus = Shikaku.all 
  	else
  		@keywords = paramKeywords;
	    @shikakus = Shikaku.searchKeywords(paramKeywords)
  	end
  end
end
