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
          result(id, "reject")
        } else {
          // swiped right
          const id = e.target.dataset.id
          result(id, "matches")
        }
      }

      initialX = null;
      initialY = null;

      e.preventDefault();
    };

    const acceptBtn = document.querySelector("#accept-btn");
    const rejectBtn = document.querySelector("#reject-btn");

    acceptBtn.addEventListener("click", (e) => {
      const id = image.dataset.id
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
  .then(window.location.href = "/offers")
}

export { swipeOffer }
