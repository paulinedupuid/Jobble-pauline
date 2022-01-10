import consumer from "./consumer";

const initChatroomCable = () => {
  const messagesContainer = document.getElementById('messages');
  if (messagesContainer) {
    const id = messagesContainer.dataset.chatroomId;

    consumer.subscriptions.create({ channel: "ChatroomChannel", id: id }, {
      received(data) {
        console.log(messagesContainer)
        messagesContainer.insertAdjacentHTML('beforeend', data);
        // called when data is broadcast in the cable
        const url = `http://localhost:3000/chatrooms/${id}`
        // window.location.href = url

        const test = document.querySelector('.test');
        const notif = document.getElementById('message-notif');
        // const nonVu = `<h2>${notif.dataset.messageCount}</h2>`;
        // test.insertAdjacentHTML("afterbegin", nonVu );

            // a finir le inser


      },
    });
  }
}

export { initChatroomCable };
