class Shikaku < ActiveRecord::Base

	def self.searchKeywords(keywords)

		keyword_arrays = keywords.gsub(/　/," ").split()
		titles = Shikaku.arel_table[:title]
		details = Shikaku.arel_table[:detail]
		titles_cond = titles.matches("\%#{keyword_arrays[0]}\%")
		details_cond = details.matches("\%#{keyword_arrays[0]}\%")
		for i in 1...keyword_arrays.length
	      titles_cond = titles_cond.or(titles.matches("\%#{keyword_arrays[i]}\%"))
	      details_cond = details_cond.or(titles.matches("\%#{keyword_arrays[i]}\%"))
	    end

	    Shikaku.where(titles_cond.or(details_cond))

	end

end
