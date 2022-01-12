// mettre dans fonction notification
const notificationTest = () => {
// const test = document.querySelector('.test');
 const nonVu = document.getElementById('message-notif');
 const nombre = nonVu.dataset.message
 nonVu.innerHTML = nombre;

  // fetch("")

  //   .then((data) => {
  //     console.log(data);
  //   });

};

export { notificationTest }
