class User < ActiveRecord::Base

	class << self
	    def from_omniauth(auth_hash)
	      user = find_or_create_by(uid: auth_hash['uid'], provider: auth_hash['provider'])
	      user.name = auth_hash['info']['name']
	      # user.location = get_social_location_for user.provider, auth_hash['info']['location']
	      # user.image_url = auth_hash['info']['image']
	      # user.url = get_social_url_for user.provider, auth_hash['info']['urls']
	      user.save!
	      user
	    end
	end
end


