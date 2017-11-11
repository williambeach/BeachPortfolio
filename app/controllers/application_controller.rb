class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern
  include DefaultPageContent

  def set_copyright
  	@copyright = PalmcollectiveViewTool::Renderer.copyright 'William Beach', 'All rights reserved'
  end 
end
