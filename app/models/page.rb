class Page < ActiveRecord::Base
	 
	before_create :set_slug

	def set_slug
		self.slug = name.parameterize
	end
end
