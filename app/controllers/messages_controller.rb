class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def show
    @message = Message.find(params[:id])
  end

  def new
  end

  def create
    @message = Message.new(message_params)

    if @message.save # validation is successful
      redirect_to @message
    else
      render 'new'
    end
  end

  private
  def message_params
    params.require(:message).permit(:text)
  end
end
