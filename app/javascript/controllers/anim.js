

// function myMove() {
// //   let id = 0;
// //   const elem = document.getElementById("test-anim");
// //   if (elem) {
// //   let pos = 0;
// //   clearInterval(id);
// //   id = setInterval(frame, 1000);
// //   function frame() {
// //      if (pos == 350) {
// //       clearInterval(id);
// //       elem.style.background = 'blue';
// //      } else {
// //       pos++;
// //       elem.style.top = pos + 'px';
// //       elem.style.left = pos + 'px';
// //       //  elem.style.background = "FF00" + pos;


// //        var i = 0;
// //        function change() {
// //          const color = ["black", "blue", "brown", "green", "purple", "orange"];
// //          elem.style.background = color[i];
// //          i = (i + 1) % color.length;
// //        }

// //        setInterval(change, 200);
// //      }
// //   }
// // }

//  const body = $('body');
//  console.log(body)

//   // click event listener
//   $('body').on("click", function (e) {
//     setInterval(explode(e.pageX, e.pageY), 100)
//   })


//   // target can be any Element or other EventTarget.


//   // explosion construction
//   function explode(x, y) {
//     var particles = 500,
//       // explosion container and its reference to be able to delete it on animation end
//       explosion = $('<div class="explosion"></div>');

//     // put the explosion container into the body to be able to get it's size
//     $('body').append(explosion);

//     // position the container to be centered on click
//     explosion.css('left', x - explosion.width() / 2);
//     explosion.css('top', y - explosion.height() / 2);

//     for (const i = 0; i < particles; i++) {
//       // positioning x,y of the particle on the circle (little randomized radius)
//       const x = (explosion.width() / 2) + rand(200, 400) * Math.cos(2 * Math.PI * i / rand(particles - 10, particles + 10)),
//         y = (explosion.height() / 2) + rand(200, 400) * Math.sin(2 * Math.PI * i / rand(particles - 10, particles + 10)),
//         color = rand(0, 255) + ', ' + rand(0, 255) + ', ' + rand(0, 255), // randomize the color rgb
//         // particle element creation (could be anything other than div)
//         elm = $('<div class="particle" style="' +
//           'background-color: rgb(' + color + ') ;' +
//           'top: ' + y + 'px; ' +
//           'left: ' + x + 'px"></div>');

//        if (i == 0) { // no need to add the listener on all generated elements
//         // css3 animation end detection
//         elm.one('webkitAnimationEnd oanimationend msAnimationEnd animationend', function (e) {
//           explosion.remove(); // remove this explosion container when animation ended
//         });
//        }
//       explosion.append(elm);
//     }
//   }

//   // get random number between min and max value
//   function rand(min, max) {
//     return Math.floor(Math.random() * (max + 1)) + min;
//   }


// }

// export { myMove }
