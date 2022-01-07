const jobDisplay = () => {

  const button = document.querySelector('.job-button')
  const jobList = document.querySelector('.job-list')
  if (button){
    button.addEventListener('click', () => {
      jobList.classList.toggle('d-none');
      if (jobList.className.includes('d-none')){
        button.innerText = "Ajouter un emploi"
      }else{
        button.innerText = "Masquer les emplois"
      }
    })
  }
};

export {jobDisplay}
