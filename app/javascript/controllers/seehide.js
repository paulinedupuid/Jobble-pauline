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

const modifySkill = () => {
  const skills = document.querySelectorAll(".choosen-skill");
  //name
  skills.forEach((s) => {
    s.addEventListener("click", (e) => {
      const id = s.dataset.skill
      const form = document.querySelector(`.choosen-skill-form-${id}`);
      form.classList.toggle("d-none");
    });

  });

};

export { jobClickSkill }
export { modifySkill }
