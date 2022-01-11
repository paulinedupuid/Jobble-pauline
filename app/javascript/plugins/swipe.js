function swipeOffer() {
  const image = document.querySelector(".offer-image");

  if (image) {
    image.addEventListener("touchstart", startTouch, false);
    image.addEventListener("touchmove", swipe, false);
    console.log("connect")

    // Swipe Left / Right
    let initialX = null;
    let initialY = null;

    function startTouch(e) {
      console.log("start")
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
        console.log("hello")
        // sliding horizontally
        if (diffX > 0) {
          // swiped left
          console.log("swiped left");
          const id = e.target.dataset.id
          const url = `/offers/${id}/reject`
          fetch(url, {
            method: "POST",
            headers: { "Accept": "text/html" },
            body: ""
          })
            .then(window.location.href = "/offers")
        } else {
          // swiped right
          console.log("swiped right");
          const id = e.target.dataset.id
          const url = `/offers/${id}/matches`
          fetch(url, {
            method: "POST",
            headers: { "Accept": "text/html" },
            body: ""
          })
          .then(window.location.href="/offers")
        }
      }

      initialX = null;
      initialY = null;

      e.preventDefault();
    };
  }
}

export { swipeOffer }
