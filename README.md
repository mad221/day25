# README

Welcome to the Gossip Project, in this repository you will find all the rails app to run it.

Please clone this repository and then execute these command lines in your terminal :

$ bundle install

$ rails db:migrate


if the terminal said password_digest already exit please, comment the ligne 3 of the migration Add_Password_Digest_To_Users. make the migrate and uncomment the same line.

$ rails db:seed

The Gossip app is now ready !

To use it in your browser please enter this last command in your terminal :




Ruby version : 2.5.1
Rails version : 5.2.2

Attendance.create!(user_id: User.first.id, event_id: Event.first.id)
