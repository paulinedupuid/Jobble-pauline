const jobClick = () => {
  const name = document.querySelectorAll(".job-name");

  //name
  console.log("fefeefefefeffefe");
  name.forEach((n) => {
    n.addEventListener("click", (e) => {
      const id = n.dataset.job
      const form = document.querySelector(`.job-form-${id}`);

      form.classList.toggle("d-none");

    });

  });



};

export { jobClick }
