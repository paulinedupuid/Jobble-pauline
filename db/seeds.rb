# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# ********************************************
# Nettoyage de la DB
# Nettoyage des offres
Offer.destroy_all
UserSkill.destroy_all
Skill.destroy_all
UserJob.destroy_all
Job.destroy_all
User.destroy_all

# ********************************************

# Users :
# Recrutor creation
puts "creation des recruteurs"
niel_xavier = User.create(email: "xavier.neil@free.fr", password: "123456", first_name: "xavier", last_name: "Neil",
                          city: "Paris", recrutor: true, gender: "homme", birthdate: Date.new(1967, 8, 25),
                          description: "Homme d'affaires, entrepreneur, business angel, fondateur du groupe Iliad")
estrosi_christian = User.create(email: "christian.estrosi@nice.fr", password: "123456", first_name: "Christian",
                                last_name: "Estrosi", city: "Nice", recrutor: true, gender: "homme",
                                birthdate: Date.new(1955, 7, 1), description: "sportif motocycliste,
                                homme politique français, ancien président du conseil général des Alpes-Maritimes")
lagardere_arnaud = User.create(email: "arnaudlagardere@rich.org", password: "123456", first_name: "Arnaud",
                               last_name: "Lagardère", city: "Paris", recrutor: true, gender: "homme",
                               birthdate: Date.new(1961, 3, 18), description: "chef d'entreprise,
                               dirigeant du groupe Lagardère, éditeur, homme d'affaires")
restaurant = User.create(email: "chezRobert@yahoo.com", password: "123456", first_name: "Robert", last_name: "Machin",
                         city: "Nice", recrutor: true, gender: "homme", birthdate: Date.new(1978, 9, 15), description:
                        "Restaurant de quartier, situé sous les arcades dans le vieux Nice, cuisinte traditionnelle et
                        familliale.")

puts "recruteurs créés"
# Candidat creation
puts "creation des candidats"
lemon_jon = User.create(email: "jon.lemon@hotmail.com", password: "123456", first_name: "Jon",
                        last_name: "Lemon", city: "Nice", gender: "homme", birthdate: Date.new(1980, 12, 8),
                        description: "concepteur et goûteur de bière.")
catarina = User.create(email: "catarina@gmail.fr", password: "123456", first_name: "Catarina", last_name: "Bellatchixtchix",
                       city: "Nice", gender: "femme", birthdate: Date.new(1986, 10, 15),
                       description: "developpeuse d'application web et web mobile")

puts "candidats créés"

# ********************************************************

# Job creation
puts "creation des jobs"

front_developper = Job.create(name: "developper web front-end")
back_developper = Job.create(name: "developper web back-end")
fullstack_developper = Job.create(name: "fullstack developper")
designer = Job.create(name: "web designer")
barista = Job.create(name: "barista")
analyst = Job.create(name: "analyste-système d'information")
affair_analyst = Job.create(name: "analyste d'affaire")
system_engineer = Job.create(name: "ingénieur système")
accounting = Job.create(name: "comptable")
jedi = Job.create(name: "maitre Jedi")
optician = Job.create(name: "opticien")

puts "jobs créés"

# ********************************************************
# Offers creation
puts "creation des offres"
first_offer = Offer.new(title: "Developpeur front-end", description: "Vous connaissez les langages de programation
                        frontend tel que HTML, CSS, Javascript, vous êtes a même de maquetter vos projets, vous savez
                        gérer le design et la codification d'une page, vous êtes célibataire, nous avons un emploi qui
                        pourrait vous convenir !", location: "Paris", salary: 40_000, number_hour: 36,
                        employement_type: "cadre", contract_type: "CDD")
first_offer.job = front_developper
first_offer.user = niel_xavier
first_offer.save!

second_offer = Offer.new(title: "developpeur PHP/symfony", description: "Nous recherchons pour notre municipalité un
                         developpeur web qui maitrise le langage back-end afin d'améliorer les services de la ville.
                         Votre mission consistera a concevoir et mettre en place une base de donnée avec son interface
                         qui permettent de dématérialiser les archives de notre ville.", location: "Nice",
                         salary: 32_000, number_hour: 40, employement_type: "chef de projet", contract_type: "CDD")
second_offer.job = back_developper
second_offer.user = estrosi_christian
second_offer.save!

third_offer = Offer.new(title: "barista", description: "dans une brasserie traditionnelle vous serez amené a préparer
                        les boissons chaudes pour nos clients, nous privilégions l'experience et le savoir-faire.",
                        salary: 20_000, number_hour: 40, employement_type: "service", contract_type: "CDD",
                        location: "Nice")
third_offer.job = barista
third_offer.user = restaurant
third_offer.save!

fourth_offer = Offer.new(title: "developpeur ruby", description: "Notre entreprise récemment installé sur la côte
                         recherche ses futurs collaborateurs, nous sommes a la recherche de developpeur web maitrisant
                         le langage ruby et le framework rails, vous devez être autonome et a même de travailler en
                         équipe. Des connaissances en Javascript sont un plus, le poste est ouvert a tout les profils.",
                         salary: 28_000, number_hour: 34, employement_type: "developpeur", contract_type: "CDI",
                         location: "Paris")
fourth_offer.job = back_developper
fourth_offer.user = lagardere_arnaud
fourth_offer.save!

fifth_offer = Offer.new(title: "developpeur fullstack", description: "Notre groupe recherche un développeur fullstack
                       pour la création de son site de vente en ligne. Vous aurez pour tâche de concevoir, créer et
                       mettre en ligne le site de vente pour notre marque et promouvoir l'image de celle-ci, nous
                       recherchons quelqu'un avec un minimum d'experience.", salary: 60_000, number_hour: 38,
                        employement_type: "salarié", contract_type: "CDI", location: "Nice")
fifth_offer.job = fullstack_developper
fifth_offer.user = lagardere_arnaud
fifth_offer.save!

puts "Offres créés"

# **************************************************
# Skills creation
puts "creation des compétences"

skill_html = Skill.create(name: "HTML5")
skill_css = Skill.create(name: "CSS3")
skill_javascript = Skill.create(name: "Javascript")
skill_ruby = Skill.create(name: "Ruby")
skill_php = Skill.create(name: "PHP7")
skill_sql = Skill.create(name: "sql")
skill_python = Skill.create(name: "Python")
skill_cafe = Skill.create(name: "Preparation de café")
skill_the = Skill.create(name: "Preparation de boissons chaudes")
skill_wireframe = Skill.create(name: "création de wireframe")
skill_english = Skill.create(name: "langue: Anglais")
skill_french = Skill.create(name: "langue: Français")
skill_spanish = Skill.create(name: "langue: Espagnol")
skill_Italian = Skill.create(name: "langue: Italien")
skill_toshop = Skill.create(name: "Photoshop")
skill_figma = Skill.create(name: "utilisation Figma")

puts "compétences créés"
