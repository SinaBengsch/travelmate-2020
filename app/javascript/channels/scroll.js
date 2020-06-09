function scrollLastMessageIntoView() {
  const messages = document.querySelectorAll('.message');
  const lastMessage = message[message.length - 1];
  lastMessage.scrollIntoView();
}
export { scrollLastMessageIntoView };
