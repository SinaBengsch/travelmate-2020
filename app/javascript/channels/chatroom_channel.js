 // scrollLastMessageIntoView();
import consumer from "./consumer";
const initChatroomCable = () => {
  const messagesContainer = document.querySelector('.messages');
  if (messagesContainer) {

    // console.log(messagesContainer.dataset)
    const id = messagesContainer.dataset.chatroomId;
    consumer.subscriptions.create({ channel: "ChatRoomChannel", id: id }, {


      received(data) {
         messagesContainer.insertAdjacentHTML('beforeend', data);
      },
    });
  }
}
export { initChatroomCable };

    // App['chat_room_<%= @chat_room.id %>'] = App.cable.subscriptions.create(
    //   { channel: 'ChatRoomsChannel', chat_room_id: <%= @chat_room.id %> },
    //   { received: (data) => {
    //     console.log(data)
    //       if (date.curent_user_id !== <%= current_user.id %>) {
    //      const messagesContainer = document.querySelector('.messages');
    //      messagesContainer.insertAdjacentHTML('beforeend', data.message_partial);
    //      scrollLastMessageIntoView();
    //     }
    //   }
    // })
