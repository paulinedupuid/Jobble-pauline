class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    # @chatroom.messages.where()
    @message = Message.new
    @chatroom.messages.each do |message|
      unless message.user_id == current_user.id
# raise
        message.status = true
        message.save!
      end
    end
  end
end
