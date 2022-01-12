const jobClickSkill = () => {
  const name = document.querySelectorAll(".skill-name");

  //name
  name.forEach((n) => {
    n.addEventListener("click", (e) => {
      const id = n.dataset.skill
      const form = document.querySelector(`.skill-form-${id}`);

      form.classList.toggle("d-none");

    });

  });



};

export { jobClickSkill }
