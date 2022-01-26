const jobClick = () => {
  const name = document.querySelectorAll(".job-name");

  //name
  name.forEach((n) => {
    n.addEventListener("click", (e) => {
      const id = n.dataset.job
      const form = document.querySelector(`.job-form-${id}`);

      form.classList.toggle("d-none");

    });

  });

};

const modifyJob = () => {
  const jobs = document.querySelectorAll(".choosen-job");

  jobs.forEach((j) => {
    j.addEventListener("click", (e) => {
      const id = j.dataset.job
      const form = document.querySelector(`.choosen-job-form-${id}`);
      form.classList.toggle("d-none");
    });

  });

};

export { jobClick }
export { modifyJob }
