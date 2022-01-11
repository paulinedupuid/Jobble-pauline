class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    # @chatroom.messages.where()
    @message = Message.new
    @chatroom.messages.each do |message|
      unless message.user_id == current_user.id
        message.status = true
        message.save!
      end
    end
# ajout destroy si + de 200
    message_all = @chatroom.messages.all
    if message_all.size > 200
      message_all.each do |me|
        me.first(50).delete
      end
    end
  end
end
