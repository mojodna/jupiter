class Post < ActiveResource::Base
  self.site = "xmpp://ubuntu.local"
  ActiveResource::Base.logger = RAILS_DEFAULT_LOGGER
end
