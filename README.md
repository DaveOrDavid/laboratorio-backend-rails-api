# Laborator.io Backend Application

# URLs
- client production site found here: https://daveordavid.github.io/laboratorio-client/
- backend heroku url here: https://intense-cove-31336.herokuapp.com/

# Client site description:
- Laborator.io is a database for appliances, tools, and household parts.
- It accepts Appiliance location, part number, and an image url
- the frontend works by interacting with a Rails API in order to populate a
SQL database

# Backend site description:
- laborator.io's backend utilizes Ruby on Rails for setup
- RESTful routes include CREATE, READ, UPDATE, and DESTROY
- the database is a one to many relationship database.

# Backend ERD model:
https://i.imgur.com/FrUS4mh.png

# Backend Technologies include:
- Ruby
- Ruby on Rails
- Heroku
- RESTful API routes

# Frontend Technologies include
- Ruby on Rails (for RESTful API)
- JavaScript
- jQuery
- Bootstrap
- HTML5
- CSS

# Future Plans - Backend
1) Utilizing a single SHOW API request vs. show all every time.
2) Adding another table for Many to Many usage

# Planning
I purposely left out the Open/Read Controller because of simplicity for using
authentication, and this application is meant to be used by only me so I prefer
the security of full auth usage. Problem solving worked around authentication,
and making sure that tokens were properly passed and recognized.
