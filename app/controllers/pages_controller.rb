class PagesController < ApplicationController

  before_filter :require_user, except: [:show, :home]

  expose(:pages)
  expose(:page, finder: :find_by_slug, finder_parameter: :slug)
  expose(:new_page, model: Page)

  def home
    redirect_to slug_path(Page.first.slug)
  end

  def create
    if new_page.save
      redirect_to slug_path(new_page.slug)
    else
      render 'new'
    end
  end

  def update
    if page.save
      redirect_to slug_path(page.slug)
    else
      render 'edit'
    end
  end

  def destroy
    page.destroy
    redirect_to :root, message: "#{page.name} was deleted."
  end

end
