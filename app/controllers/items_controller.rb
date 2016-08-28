class ItemsController < ApplicationController
before_action :require_sign_in, except: :show

  def create
    @item.user = current_user
  end
end
