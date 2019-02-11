# README
Projet réalisé par :
----------------------
- Marion Audren
- Maxime Pouzol
- Thomas Le Vot
----------------------

Welcome to the Eventbrite Project, in this repository you will find all the rails app to run it.

Please clone this repository and then execute these command lines in your terminal :

$ bundle install

$ rails db:create

$ rails db:migrate

$ rails db:seed

The Eventbrite app is now ready !

Pour vous faciliter, la tâche voici la marche à suivre pour tester les différents modes d'envoi d'emails :

1)Tout d'abord on créer un nouvel utilisateur avec une adresse yopmail.

$ rails console
> u1 = User.create!(first_name: "Homer", last_name: "Simpson", email:"homer.simpon@yopmail.com")

A ce stade vous pouvez voir le mail au format html dans votre console.

2) Puis, on créer un nouvel Event avec l'utilisateur que l'on vient de créer.

> e1 = Event.create!( title: Faker::Lorem.characters(6), description: Faker::ChuckNorris.fact, start_date: Time.now+3.day, duration: rand(1..10)*5, location: Faker::Address.city, price: rand(1..1000), user_id: u1.id)

3) Enfin, on créer un nouvel "Attendance" (= participation à un évenement) dans notre console :

> Attendance.create!(user_id: u1.id, event_id: Event.last.id)

Pour vérifier il suffit de vous rendre sur http://www.yopmail.com/ et de chercher le mail envoyé

---------------------
Ruby version : 2.5.1
Rails version : 5.2.2
---------------------
