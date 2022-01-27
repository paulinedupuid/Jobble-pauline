require "open-uri"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# *********************************************************************************************************************
# ************************************************ GUIDE TO USE THE SEED **********************************************
# *********************************************************************************************************************

# use the user soline.lemoine@hotmail.com (password: sl_091289) to navigate, choose the 2 following jobs :
# backend developper / fullstack developper
# If you wanna add a job to add more offers, add frontend developper.

# You can validate the following offer to have a match:
# "Développeur web freelance" by Thibaut Mondy
# "developpeur Ruby/stimulus" by Jeanne Durand

# and if you have added the frontend developper job to the list the:
#  "Developpeur Javascript Frontend" offer by Samia Ora

# To test the non display (or recrutor_status false in a match)
# "developpeur fullstack" by arnaud lagardere
# "Backend Developers" by tim cook

# ******************************************************************************
# Nettoyage de la DB

# Nettoyage des messages
Message.destroy_all
# Nettoyage des chatrooms
Chatroom.destroy_all
# Nettoyage des matches
Match.destroy_all
# Nettoyage des userjobs
UserJob.destroy_all
# Nettoyage des offres
Offer.destroy_all
# Nettoyage des userskill
UserSkill.destroy_all
# Nettoyage des skills
Skill.destroy_all
# Nettoyage des jobs
Job.destroy_all
# Nettoyage des users
User.destroy_all

# ********************************************

# Users :
# Recrutor creation
puts "creation des recruteurs"
jeanne_durand = User.create(email: "jeanne.durand@free.fr", password: "jd_250867", first_name: "Jeanne",
                                last_name: "Durand", city: "Paris", recrutor: true, gender: "femme",
                                birthdate: Date.new(1967, 8, 25), description: "Femme d'affaires, entrepreneure, business
                                angel, fondatrice d'une grande entreprise de la tech")
paul_dumond = User.create(email: "paul.dumont@nice.fr", password: "pd_010755", first_name: "Paul",
                                last_name: "Dumont", city: "Nice", recrutor: true, gender: "homme",
                                birthdate: Date.new(1955, 7, 1), description: "Ancien sportif de haut niveau reconverti
                                dans la politique")
emilie_carpi = User.create(email: "emilie.carpi@comm.org", password: "ec_180361", first_name: "Emilie",
                               last_name: "Carpi", city: "Paris", recrutor: true, gender: "femme",
                               birthdate: Date.new(1961, 3, 18), description: "Cheffe d'entreprise,
                               à la tête du groupe Comm', éditrice, femme d'affaires")
thibaut_mondy = User.create(email: "thibaut.mondy@pear.com", password: "td_011160", first_name: "Thibaut", last_name: "Mondy",
                              city: "Lyon", recrutor: true, gender: "homme", birthdate: Date.new(1960, 11, 1), description:
                              "chef d'entreprise, actuel directeur général (CEO) de Pear. Informaticien, ingénieur.")
restaurant = User.create(email: "chezRobert@yahoo.com", password: "rp_150978", first_name: "Robert", last_name: "Paty",
                              city: "Nice", recrutor: true, gender: "homme", birthdate: Date.new(1978, 9, 15), description:
                              "Restaurant de quartier, situé sous les arcades dans le vieux Nice, cuisinte traditionnelle et
                              familliale.")
samia_ora = User.create(email: "samia.ora@gmail.fr", password: "so_221260", first_name: "Samia", last_name:
                              "Ora", city: "Paris", recrutor: true, gender: "femme", birthdate:
                              Date.new(1960, 12, 22), description: "Entrepreneure et consultante, formatrice en
                              responsabilité sociétale des entreprises (RSE)")
jobconnect = User.create(email: "jobconnect@gmail.fr", password: "jc_011214", first_name: "job", last_name:
                              "connect", city: "Paris", recrutor: true, gender: "femme", birthdate:
                              Date.new(2014, 12, 1), description: "Job connect est une entreprise qui vous met en
                              relation avec des recruteurs, nous cherchons les offres qui vous conviennent le mieux et
                              nous vous mettons en relation pour faciliter votre recherche !")

puts "recruteurs créés"
# Candidat creation
puts "creation des candidats"

soline_photo = URI.open('https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
soline = User.create(email: "soline.lemoine@hotmail.com", password: "sl_091289", first_name: "Soline",
                        last_name: "Lemoine", city: "Nice", gender: "homme", birthdate: Date.new(1989, 12, 8),
                        description: "Développeuse Web, fraichement sortie du bootcamp")
soline.photo.attach(io: soline_photo, filename: 'soline.png', content_type: 'image/png')
catarina = User.create(email: "catarina@gmail.fr", password: "cr_151086", first_name: "Catarina", last_name:
                       "Repova", city: "Nice", gender: "femme", birthdate: Date.new(1986, 10, 15),
                       description: "developpeuse d'application web et web mobile")
bot_test = User.create(email: "jobble@heroku.com", password: "123456", first_name: "bot", last_name: "test",
                       city: "computer", gender: "homme", description: "Bot de test pour envoyer le premier message")

puts "candidats créés"

# ********************************************************

# Job creation
puts "creation des jobs"

front_developper = Job.create(name: "Developper web front-end")
back_developper = Job.create(name: "Developper web back-end")
fullstack_developper = Job.create(name: "Développeur fullstack")
designer = Job.create(name: "Web designer")
barista = Job.create(name: "Barista")
analyst = Job.create(name: "Analyste-système d'information")
affair_analyst = Job.create(name: "Analyste d'affaire")
system_engineer = Job.create(name: "Ingénieur système")
accounting = Job.create(name: "Comptable")
data_scientist = Job.create(name: "Spécialiste des données")
data_engineer = Job.create(name: "Ingénieur des données")
data_analyst = Job.create(name: "Analyste de données")
human_ressources = Job.create(name: "Ressources humaines")
optician = Job.create(name: "Opticien")

puts "jobs créés"

# ******************************************************** , company_name:
# Offers creation
puts "creation des offres:"

file1 = URI.open('https://images.pexels.com/photos/5990272/pexels-photo-5990272.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
first_offer = Offer.new(title: "Developpeur front-end", description: "Vous connaissez les langages de programation
                        frontend tel que HTML, CSS, Javascript, vous êtes a même de maquetter vos projets, vous savez
                        gérer le design et la codification d'une page, nous avons un emploi qui pourrait vous convenir!",
                        location: "Paris", salary: 3_250, number_hour: 35,
                        employement_type: "Cadre", contract_type: "CDD", company_name: "Tech World")
first_offer.photo.attach(io: file1, filename: 'offer1.png', content_type: 'image/png')
first_offer.job = front_developper
first_offer.user = jeanne_durand
first_offer.save!

puts "1"

file1_1 = URI.open('https://images.pexels.com/photos/4065623/pexels-photo-4065623.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
non_valid_offer = Offer.new(title: "Développeur React Front-end", description: "Tu rejoindras un collectif composé de 25
                            personnes dont 13 développeurs. 1 à 4 développeurs sont dédiés à chaque projet remporté. Les
                            projets peuvent se construire en parallèle (moyenne de 4 à 6 projets/an). Evidemment, tu ne
                            seras jamais seul au début.", location: "Nice", salary: 1_800, number_hour: 40,
                            employement_type: "Cadre", contract_type: "CDI", company_name: "Job connect")
non_valid_offer.photo.attach(io: file1_1, filename: 'offer1-1.jpg', content_type: 'image/png')
non_valid_offer.job = back_developper
non_valid_offer.user = jobconnect
non_valid_offer.save!

puts "1.1"

file1_2 = URI.open('https://images.pexels.com/photos/4065619/pexels-photo-4065619.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
non_valid_offer4 = Offer.new(title: "Développeur Back-end API", description: "Smood, acteur incontournable Suisse dans
                            le domaine de la FoodTech et du LastMileDelivery souhaite renforcer les équipes de son
                            centre IT via sa société JAMTECH. Smood offre un lien entre les restaurateurs et les clients
                            en organisant les livraisons des plats à domicile ou au bureau grâce à notre plateforme web
                            et nos applications mobiles.", location: "Nice", salary: 1_500, number_hour: 40,
                             employement_type: "Cadre", contract_type: "CDI", company_name: "Job connect")
non_valid_offer4.photo.attach(io: file1_2, filename: 'offer1-2.jpg', content_type: 'image/png')
non_valid_offer4.job = back_developper
non_valid_offer4.user = jobconnect
non_valid_offer4.save!

puts "1.2"

file2 = URI.open('https://images.pexels.com/photos/5668859/pexels-photo-5668859.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
second_offer = Offer.new(title: "Developpeur PHP/symfony", description: "Nous recherchons pour notre municipalité un
                         developpeur Web qui maitrise le langage back-end afin d'améliorer les services de la ville.
                         Votre mission consistera à concevoir et mettre en place une base de donnée avec son interface
                         permettant de dématérialiser les archives de notre ville.", location: "Nice",
                         salary: 2_600, number_hour: 40, employement_type: "Cadre", contract_type: "CDD",
                         company_name: "Ville de Nice")
second_offer.photo.attach(io: file2, filename: 'offer2.jpg', content_type: 'image/png')
second_offer.job = back_developper
second_offer.user = paul_dumond
second_offer.save!

puts "2"

file3 = URI.open('https://images.pexels.com/photos/262978/pexels-photo-262978.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
third_offer = Offer.new(title: "Barista", description: "Dans une brasserie traditionnelle, vous serez amené à préparer
                        les boissons chaudes pour nos clients, nous privilégions l'experience et le savoir-faire.",
                        salary: 1_600, number_hour: 40, employement_type: "Salarié", contract_type: "CDD",
                        location: "Nice", company_name: "Restaurant chez Robert")
third_offer.photo.attach(io: file3, filename: 'offer3.jpg', content_type: 'image/png')
third_offer.job = barista
third_offer.user = restaurant
third_offer.save!

puts "3"

file4 = URI.open('https://images.pexels.com/photos/6457490/pexels-photo-6457490.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
fourth_offer = Offer.new(title: "Developpeur ruby", description: "Notre entreprise récemment installé sur la côte
                         recherche ses futurs collaborateurs, nous sommes à la recherche de developpeurs Web maitrisant
                         le langage Ruby et le framework Rails, vous devez être autonome et a même de travailler en
                         équipe. Des connaissances en Javascript sont un plus, le poste est ouvert à tous les profils.",
                         salary: 2_300, number_hour: 35, employement_type: "Cadre", contract_type: "CDI",
                         location: "Nice", company_name: "Groupe Comm'")
fourth_offer.photo.attach(io: file4, filename: 'offer4.jpg', content_type: 'image/png')
fourth_offer.job = affair_analyst
fourth_offer.user = emilie_carpi
fourth_offer.save!

puts "4"

file5 = URI.open('https://images.pexels.com/photos/6457570/pexels-photo-6457570.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
fifth_offer = Offer.new(title: "Développeur fullstack", description: "Notre groupe recherche un développeur fullstack
                       pour la création de son site de vente en ligne. Vous aurez pour tâche de concevoir, créer et
                       mettre en ligne le site de vente pour notre marque et promouvoir l'image de celle-ci, nous
                       recherchons quelqu'un avec un minimum d'experience.", salary: 5_000, number_hour: 40,
                        employement_type: "Salarié", contract_type: "CDI", location: "Paris", company_name: "Groupe
                        Comm'")
fifth_offer.photo.attach(io: file5, filename: 'offer5.jpg', content_type: 'image/png')
fifth_offer.job = affair_analyst
fifth_offer.user = emilie_carpi
fifth_offer.save!

puts "5"

file6 = URI.open('https://images.pexels.com/photos/5668885/pexels-photo-5668885.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
sixth_offer = Offer.new(title: "graphiste web", description: "Nous recherchons actuellement un graphiste avec des
                        compétences de web-designer, capable de créer l'interface graphique et de dessiner les visuels.
                        Vous intégrerez une équipe où vous aiderez a la conception du design et a son intégration",
                        salary: 2_375, number_hour: 40, employement_type: "Salarié", contract_type: "Intérim",
                        location: "Nice", company_name: "Ville de Nice")
sixth_offer.photo.attach(io: file6, filename: 'offer6.jpg', content_type: 'image/png')
sixth_offer.job = designer
sixth_offer.user = paul_dumond
sixth_offer.save!

puts "6"

file7 = URI.open('https://images.pexels.com/photos/5971257/pexels-photo-5971257.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
seventh_offer = Offer.new(title: "Développeur Ruby/stimulus", description: "Rejoignez notre équipe de développeurs !
                          Vous maitrisez les langages Ruby et stimulus ? Vous souhaitez améliorer vos connaissances
                          au sein d'une équipe innovante et créative ? Nous avons peut-être une place
                          pour vous ! Développez vos talents au sein de nos équipes et créez l'avenir !",
                          salary: 2_900, number_hour: 35, employement_type: "Salarié", contract_type: "CDI",
                          location: "Nice", company_name: "Tech World")
seventh_offer.photo.attach(io: file7, filename: 'offer7.jpg', content_type: 'image/png')
seventh_offer.job = back_developper
seventh_offer.user = jeanne_durand
seventh_offer.save!

puts "7"

file8 = URI.open('https://images.pexels.com/photos/6953922/pexels-photo-6953922.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
eigth_offer = Offer.new(title: "Développeur Web", description: "Nous recherchons un développeur Web polyvalent justifiant d'une
                        grande expérience dans les langages JavaScript et Python. Vous serez autonome dans vos tâches et
                        superviserez le reste de l'équipe de développeurs.",
                        salary: 1_800, number_hour: 35, employement_type: "Salarié", contract_type: "CDI",
                        location: "Paris", company_name: "Resp Ent")
eigth_offer.photo.attach(io: file8, filename: 'offer8.jpg', content_type: 'image/png')
eigth_offer.job = back_developper
eigth_offer.user = samia_ora
eigth_offer.save!

puts "8"

file9 = URI.open('https://images.pexels.com/photos/7129713/pexels-photo-7129713.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
nine_offer = Offer.new(title: "Ingénieur système d'information", description: "Placé(e) sous l'autorité hiérarchique de
                       la Direction Générale, le ou la chargée de mission SI est membre de l'équipe du siège de
                       l'Association. Ses missions seront axées autour du déploiement de la démarche qualité associative
                       et des démarches projets qui émanent des établissements et services, mais aussi de l'Association.
                       Il assurera en particulier le pilotage des projets issus de la stratégie du Système d'Information
                       en lien avec l'amélioration de la qualité du service rendu par les établissements et services.
                       Missions liées à l'optimisation des processus métier et à la mise en oeuvre du logiciel dossier
                       unique de l'usager.", salary: 3_250, number_hour: 40, employement_type: "Salarié", contract_type:
                       "CDI", location: "Dijon", company_name: "Pear")
nine_offer.photo.attach(io: file9, filename: 'Offer9.jpg', content_type: 'image/png')
nine_offer.job = system_engineer
nine_offer.user = thibaut_mondy
nine_offer.save!

puts "9"

file10 = URI.open('https://images.pexels.com/photos/7129707/pexels-photo-7129707.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
ten_offer = Offer.new(title: "Développeur Web freelance", description: "OFFRE D'EMPLOI POUR PERSONNES INDÉPENDANTES
                      EXPERT(E) EN WEB MARKETING + copyrighting.
                      Pour développement d'un projet à long terme, si tu es une personne investi qui a du temps et
                      de l'expérience / résultat dans le domaine. J'attends TON e-mails ET j'espère que TU sauras mettre
                      en avant tes talents de copyrighteurs ", salary: 1_700, number_hour: 35,
                      employement_type: "Freelance", contract_type: "CDD", location: "N/A", company_name: "Pear")
ten_offer.photo.attach(io: file10, filename: 'offer10.jpg', content_type: 'image/png')
ten_offer.job = fullstack_developper
ten_offer.user = thibaut_mondy
ten_offer.save!

puts "10"

file11 = URI.open('https://images.pexels.com/photos/7129706/pexels-photo-7129706.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
eleven_offer = Offer.new(title: "Backend Developers", description: "Backend Developers for long-term
                        contract roles (remote roles for EU residents). Enjoy the full flexibility and freedom of working
                        remotely as a Backend developer focusing on your favourite languages with ambitious tech
                        companies around the world. About our positions:Teamway is the new community-led network for
                        tech professionals. We find incredible opportunities for talented professionals like you, who
                        prefer to work remotely in the tech industry.", salary: 2_400, number_hour: 40,
                         employement_type: "Freelance", contract_type: "CDD", location: "France", company_name: "Pear")
eleven_offer.photo.attach(io: file11, filename: 'offer11.jpg', content_type: 'image/png')
eleven_offer.job = back_developper
eleven_offer.user = thibaut_mondy
eleven_offer.save!

puts "11"

file12 = URI.open('https://images.pexels.com/photos/6953927/pexels-photo-6953927.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
twelve_offer = Offer.new(title: "Developpeur Javascript Frontend", description: "Resp Ent est un groupe de sociétés
                         innovantes qui exploitent les nouvelles technologies en plaçant le client au centre de toutes
                         ses démarches. Nous élaborons et proposons des solutions qui contribuent à l’éducation
                         financière de nos clients. Créée en 2008, d’une envie d’entreprendre et d’une volonté
                         d’améliorer le quotidien de chacun, nous comptons aujourd’hui 12 marques et sociétés regroupées
                         autour de 4 industries : le E-learning, l’Assurance, la Finance et l’Immobilier. Nous cherchons
                         donc un(e) Developpeur(se) Front End (H/F) de compétition, qui n’a pas peur de s’attaquer à
                         des défis variés et qui saura les relever avec brio.", salary: 1_900, number_hour: 35,
                         employement_type: "Salarié", contract_type: "CDI", location: "Nice",
                         company_name: "Resp Ent")
twelve_offer.photo.attach(io: file12, filename: 'offer12.jpg', content_type: 'image/png')
twelve_offer.job = front_developper
twelve_offer.user = samia_ora
twelve_offer.save!

puts "12"

file13 = URI.open('https://images.pexels.com/photos/6267/menu-restaurant-vintage-table.jpg?auto=compress&cs=tinysrgb&dpr=1&w=500')
thirtenn_offer = Offer.new(title: "Développeur fullstack JavaScript", description: "Afin de promouvoir notre image,
                          notre restaurant recherche actuellement un developpeur Web fullstack connaissant les
                          technologies JavaScript et php afin de concevoir le design et l'intégralité de l'architecture
                          de notre future plate-forme de livraison en ligne.", salary: 1_800, number_hour: 40,
                           employement_type: "Salarié", contract_type: "CDD", location: "Nice", company_name:
                           "Restaurant chez Robert")
thirtenn_offer.photo.attach(io: file13, filename: 'offer13.jpg', content_type: 'image/png')
thirtenn_offer.job = fullstack_developper
thirtenn_offer.user = restaurant
thirtenn_offer.save!

puts "13"

file14 = URI.open('https://images.pexels.com/photos/6457515/pexels-photo-6457515.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
fourteen_offer = Offer.new(title: "UX designer", description: "Dans le cadre du développement de notre entreprise nous
                           recrutons actuellement deux web-designer avec de l'expèrience en user experience afin de
                           dinamyser nos équipes et de créer une identité graphique nouvelle propre a notre marque pour
                           le secteur de la France.", salary: 2_300, number_hour: 38, employement_type: "Salarié",
                           contract_type: "CDI", location: "Marseille", company_name: "Group Comm'")
fourteen_offer.photo.attach(io: file14, filename: 'offer14.jpg', content_type: 'image/png')
fourteen_offer.job = designer
fourteen_offer.user = emilie_carpi
fourteen_offer.save!

puts "14"

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
skill_wireframe = Skill.create(name: "Création de wireframe")
skill_english = Skill.create(name: "Langue: anglais")
skill_french = Skill.create(name: "Langue: français")
skill_spanish = Skill.create(name: "Langue: espagnol")
skill_italian = Skill.create(name: "Langue: italien")
skill_toshop = Skill.create(name: "Photoshop")
skill_figma = Skill.create(name: "Figma")
skill_office = Skill.create(name: "Suite Office")
skill_github = Skill.create(name: "Github")
skill_vente = Skill.create(name: "Vente")
skill_communication = Skill.create(name: "Contact client")
skill_gestion = Skill.create(name: "Gestion de stocks")
skill_ponctualite = Skill.create(name: "Ponctualité")

puts "compétences créés"

# ***********************************************
# user_jobs creation
puts "création des user_jobs"

third_job = UserJob.new(experience: 46)
third_job.user = catarina
third_job.job = designer
third_job.save!

puts "user_jobs créés"

# **********************************************
# matches creation
puts "création des matches"

second_match = Match.new(recrutor_status: false)
second_match.offer = fifth_offer
second_match.user = soline
second_match.save!

third_match = Match.new(recrutor_status: true)
third_match.offer = sixth_offer
third_match.user = catarina
third_match.save!

five_match = Match.new(recrutor_status: true)
five_match.offer = ten_offer
five_match.user = soline
five_match.save!

six_match = Match.new(recrutor_status: true)
six_match.offer = seventh_offer
six_match.user = soline
six_match.save!

seven_match = Match.new(recrutor_status: false)
seven_match.offer = eleven_offer
seven_match.user = soline
seven_match.save!

eight_match = Match.new(recrutor_status: true)
eight_match.offer = eigth_offer
eight_match.user = catarina
eight_match.save!

nine_match = Match.new(recrutor_status: true)
nine_match.offer = twelve_offer
nine_match.user = soline
nine_match.save!

puts 'matches créés'

# ********************************************
