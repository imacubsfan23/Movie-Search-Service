## Production Website: https://moviesearchservice.herokuapp.com

# Movie Search Service
An interface to search shows and movies through themoviedb API
## Problem 
Needed a way to find new shows and movies with little work
## Solution 
Use themoviedb API to query a large database of shows and movies

# Technical Choices
## Ruby on Rails
The fastest deployable option for making any backend
## ActiveResource instead of ActiveRecord
I wasn't querying from my own database, I was using an external API, so I used ActiveResource in order to access my "business logic"
## Figaro
I needed to set the api key secretly in production
## HTTParty
I wasn't using my own routes when using the search form and popular shows list, because I didn't have controllers for these actions.
So my only option was to instead make http requests to the api, and HTTParty does this well
## UI/UX Decisions
### Not accessing a new page when searching shows or movies
This made my site feel more like a SPA, which was what I wanted
### Scrolling to bottom of page when discover page was greater than 1
This way the user doesn't have to manually scroll back to the bottom of the page when looking through popular results

# Future Goals
* Improve the scroll to bottom of page functionality
* Use React.js to create a better front end, and use redux to simulate my backend
