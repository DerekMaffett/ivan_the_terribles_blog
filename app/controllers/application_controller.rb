class ApplicationController < ActionController::Base
  include ActionController::Caching::Pages
  self.page_cache_directory = "#{Rails.root.to_s}/public/cache/pages"

  protect_from_forgery

  def break_index_cache
    expire_page controller: 'posts', action: :index
  end
end
