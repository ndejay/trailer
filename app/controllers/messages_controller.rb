class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def show
    @message = Message.find(params[:id])
  end

  def new
  end

  def edit
    @message = Message.find(params[:id])
  end

  def create
    @message = Message.new(message_params)

    if @message.save # validation is successful
      redirect_to @message
    else
      render 'new'
    end
  end

  def update
    @message = Message.find(params[:id])

    if @message.update(message_params)
      redirect_to @message
    else
      render 'edit'
    end
  end

  private
  def message_params
    params.require(:message).permit(:text)
  end
end
