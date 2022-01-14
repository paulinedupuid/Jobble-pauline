function explode(x, y) {
  const particles = 300,
    // explosion container and its reference to be able to delete it on animation end
    explosion = $('<div class="explosion"></div>');
const image = document.querySelector('.offer-image');
  // put the explosion container into the body to be able to get it's size
  $(image).append(explosion);

  // position the container to be centered on click
  explosion.css('left', x - explosion.width() / 2);
  explosion.css('top', y - explosion.height() / 2);

  for (let i = 0; i < particles; i++) {
    // positioning x,y of the particle on the circle (little randomized radius)
    let x = (explosion.width() / 2) + rand(200, 400) * Math.cos(2 * Math.PI * i / rand(particles - 10, particles + 10)),
      y = (explosion.height() / 2) + rand(200, 400) * Math.sin(2 * Math.PI * i / rand(particles - 10, particles + 10)),
      color = rand(0, 255) + ', ' + rand(0, 255) + ', ' + rand(0, 255), // couleur aleatoirr
      // particle element creation (could be anything other than div)
      elm = $('<div class="particle" style="' +
        'background-color: rgb(' + color + ') ;' +
        'top: ' + y + 'px; ' +
        'left: ' + x + 'px"></div>');

    if (i == 0) { // no need to add the listener on all generated elements
      elm.one('webkitAnimationEnd oanimationend msAnimationEnd animationend', function (e) {
        explosion.remove(); // remove this explosion container when animation ended
      });
    }
    explosion.append(elm);
  }
}
function rand(min, max) {
  return Math.floor(Math.random() * (max + 1)) + min;
}

function swipeOffer() {
  const image = document.querySelector(".offer-image");

  if (image) {
    image.addEventListener("touchstart", startTouch, false);
    image.addEventListener("touchmove", swipe, false);

    // Swipe Left / Right
    let initialX = null;
    let initialY = null;

    function startTouch(e) {
      initialX = e.touches[0].clientX;
      initialY = e.touches[0].clientY;
    };

    function swipe(e) {
      if (initialX === null) {
        return;
      }

      if (initialY === null) {
        return;
      }

      let currentX = e.touches[0].clientX;
      let currentY = e.touches[0].clientY;

      let diffX = initialX - currentX;
      let diffY = initialY - currentY;

      if (Math.abs(diffX) > Math.abs(diffY)) {
        // sliding horizontally
        if (diffX > 0) {
          // swiped left
          const id = e.target.dataset.id
          const carte = document.querySelector('.content-offers');
          carte.style.animation = 'translate(-300px)';
          carte.style.transition = 'all 1s ease-out'

          //////////////////////
          // const dislike = document.querySelector(".refus-anim");
          // const buttonDislike = document.querySelector('.refus-annim-button');
          //   buttonDislike.addEventListener('click', (e) => {
          //       e.preventDefault();
          //      e.currentTarget.classList.remove("d-none");
          //   });

          // dislike.style.transform = 'translate(-20px, -20px)rotate(25deg)';
          result(id, "reject")


        } else {
          // swiped right
          const id = e.target.dataset.id
          const carte = document.querySelector('.content-offers');
          carte.style.transform = 'translate(+300px)';
          carte.style.transition = 'all 1s ease-out'
          result(id, "matches")
        }
      }
//////////////////////////////////////////////////////////////////////////////////


      initialX = null;
      initialY = null;

      e.preventDefault();
    };

    const acceptBtn = document.querySelector("#accept-btn");
    const rejectBtn = document.querySelector("#reject-btn");

    acceptBtn.addEventListener("click", (e) => {
      const id = image.dataset.id
      // setInterval(explode(260, 450), 1000)
      result(id, "matches")

    })

    rejectBtn.addEventListener("click", (e) => {
      const id = image.dataset.id
      result(id, "reject")
    })

  }
}


const result = (id, status) => {
  const url = `/offers/${id}/${status}`
  fetch(url, {
    method: "POST",
    headers: { "Accept": "text/html" },
    body: ""
  })
    .then((data) => {
      const url = data.url
      if (url.includes("offers"))  {
        window.location.href = "/offers"
      } else {
        const carte = document.querySelector('.content-offers');
        carte.style.transition = 'initial';
        const id = url.split("/matches/")[1]
        const modal = document.querySelector(".modal-shadow")
        modal.classList.remove("modal-hidden")
        const modalContent = document.querySelector(".match-modal")
        setInterval(explode(260, 450), 1100)
        modalContent.innerHTML = `
        <a href="/offers" id="close-modal">X</a>
        <h2 id='h2-modal'>It's a</h2>
        <h1>Match !<h1>
        <div class="b-margin-60"></div>
        <h1 style="font-size:100px;">😍</h1>
        <div class="b-margin-60"></div>
        <a href="/matches/${id}" class="button-pill-xlarge pill-jaune">Mon match</a>
        <div class="b-margin-20"></div>
        <a href="/offers" class="button-pill-xlarge pill-lavande">Continuer</a>
        `
      }
    })
}

export { swipeOffer }


// 148
