class ApplicationController < ActionController::Base

  protect_from_forgery

  include Authem::ControllerSupport

  expose(:page_slugs ) { Page.select(:slug).map(&:slug) }

end
