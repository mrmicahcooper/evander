class Page < ActiveRecord::Base

  attr_accessible :body, :name, :slug

  default_scope order('created_at ASC, updated_at ASC')

  validates_uniqueness_of :name

  before_save :update_slug

  def update_slug
   self.slug = name.parameterize
  end

end
