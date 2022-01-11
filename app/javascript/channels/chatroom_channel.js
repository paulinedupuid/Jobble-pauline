import consumer from "./consumer";

const initChatroomCable = () => {
  const nonVu = document.getElementById('message-notif');
  const messagesContainer = document.getElementById('messages');
  if (messagesContainer) {
    const id = messagesContainer.dataset.chatroomId;

    consumer.subscriptions.create({ channel: "ChatroomChannel", id: id }, {
      received(data) {
        messagesContainer.insertAdjacentHTML('beforeend', data);
        // called when data is broadcast in the cable
        // const url = `http://localhost:3000/chatrooms/${id}`
        // window.location.href = url


        // console.log(nonVu.dataset.message);
        // const aa = nonVu.dataset.message
        // nonVu.innerHTML = aa;

      },
    });
  }
}

export { initChatroomCable };
