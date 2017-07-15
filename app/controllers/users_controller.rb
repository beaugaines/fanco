class UsersController < ApplicationController
  def index
    @creators = User.creator
  end
end
