class ApplicationController < ActionController::Base
  protect_from_forgery

  expose(:page_slugs ) { Page.select(:slug).map(&:slug) }

end
