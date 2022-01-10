const userInfoDisplay = () => {
  // Selection of the DOM element to target
  const button = document.querySelector('.user-info-btn')
  const userInfo = document.querySelector('.user-info')
  const userFormInfo = document.querySelector('.user-form')
  if (button) {
    // Listen on the click event on the "button" div
    button.addEventListener('click', (e) => {
      // Changing the class of the divs for modify the display
      userInfo.classList.toggle('d-none')
      userFormInfo.classList.toggle('d-none')
      if (userInfo.className.includes('d-none')){
        // Change the text of the button for more sense
        button.innerText = "annuler modifications"
      }else{
        // Don't forget to reinitialise the text of the button.
        button.innerText = "Modifier mes informations"
      }
    })
  }
}

export {userInfoDisplay}
