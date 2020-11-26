# Flix-O-Mania

This is a side project I did to practice using hooks since it is best practice now compared to using class components. 
The single page application allows a user to search for a movie with the search field, and also allows a user to increase likes or dislikes. The application took advantage of media breakpoints with Semantic UI to allow the app to look good on both desktop and mobile phone.

![flixomania gif](https://github.com/wilsonvetdev/flix-o-mania-api/blob/main/flixomania.gif)

# Video Link
https://www.youtube.com/watch?v=I5IJ2v18BGw

# Tech
* Ruby [2.6.1]
* Rails [6.0.3.2]
* React(Components, Hooks, and Routes)
* Semantic UI React for styling
* PostgresQL - Database
* rack-cors - provides support for Cross-Origin Resource Sharing for Rack compatible web applications(allows the front-end portion of this project to perform fetch requests)
* active_model_serializers - allows customization and rendering of data in JSON format as responses to requests

# Set-Up
Note - Front-End repo here -> https://github.com/wilsonvetdev/flix-o-mania/
1. Clone this repo to your local machine -- git clone < git repository >
2. cd into the flix-o-mania-api repo
3. Run $ bundle install -> installs required dependencies
4. Run $ rails db:create -> creates the database
5. Run $ rails db:migrate -> migrate/creates the movie table in this case
6. Run $ rails s  -> starts the server

# Data Source
https://www.themoviedb.org/

# Known Issues(tracking)
1. Front-end - Memory leak warning pops up in the console when I do different searches too quickly(?) - Not sure if that's the root cause, but definitely need to do deeper dive into React hooks.
