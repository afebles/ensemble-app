class MessagesController < ApplicationController
  before_action do
    @conversation = Conversation.find(params[:conversation_id])
    end

  def index
   @messages = @conversation.messages.where.not(user: current_user)
    if @messages.length > 10
      @over_ten = true
      @messages = @messages[-10..-1]
    end
    if params[:m]
      @over_ten = false
      @messages = @conversation.messages
    end
    if @messages.last
      if @messages.last.user_id != current_user.id
       @messages.last.read = true;
      end
    end
    @message = @conversation.messages.new
  end

  def show
    @conversation = Conversation.find(params[:conversation_id])
    # @message = Message.find(params[:id])
    # @message.read = true
    # @message.save!
  end

  def new
   @message = @conversation.messages.new
  end

  def create
    @message = @conversation.messages.new(message_params)
    if @message.save
    redirect_to conversation_messages_path(@conversation)
    end
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy
    redirect_back(fallback_location: root_path)
  end

  def mark_read
    @message = Message.find(params[:id])
    @message.read = true
    @message.save!
    redirect_back(fallback_location: root_path)
  end

  private
    def message_params
      params.require(:message).permit(:body, :user_id)
    end
end
