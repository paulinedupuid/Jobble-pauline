// mettre dans fonction notification
const notificationTest = () => {
// const test = document.querySelector('.test');
 const nonVu = document.getElementById('message-notif');
 console.log(nonVu.dataset.message);
 const aa = nonVu.dataset.message
 nonVu.innerHTML = aa;

  // fetch("")

  //   .then((data) => {
  //     console.log(data);
  //   });

};

export { notificationTest }
