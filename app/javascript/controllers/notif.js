// mettre dans fonction notification
const notificationTest = () => {
// const test = document.querySelector('.test');
 const nonVu = document.getElementById('message-notif');
 const nombre = nonVu.dataset.message
 if (nonVu) {
 nonVu.innerHTML = nombre;
 nonVu.classList.remove("d-none");
 }

  // fetch("")

  //   .then((data) => {
  //     console.log(data);
  //   });

};

export { notificationTest }
