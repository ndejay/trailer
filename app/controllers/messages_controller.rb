class MessagesController < ApplicationController
  def new
  end

  def create
    render plain: params[:message].inspect
  end
end
