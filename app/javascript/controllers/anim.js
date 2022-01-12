

function myMove() {
  let id = 0;
  const elem = document.getElementById("test-anim");
  console.log(elem);
  let pos = 0;
  clearInterval(id);
  id = setInterval(frame, 1000);
  function frame() {
     if (pos == 350) {
      clearInterval(id);
      elem.style.background = 'blue';
     } else {
      pos++;
      elem.style.top = pos + 'px';
      elem.style.left = pos + 'px';
      //  elem.style.background = "FF00" + pos;


       var i = 0;
       function change() {
         const color = ["black", "blue", "brown", "green", "purple", "orange"];
         elem.style.background = color[i];
         i = (i + 1) % color.length;
       }

       setInterval(change, 200);
     }
  }
}

export { myMove }
