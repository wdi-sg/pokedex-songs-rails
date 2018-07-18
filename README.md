# Pokedex Rails App (with Postgres SQL)

For this exercise, we'll create a Rails app with Postgres database. The end result we want is a CRUD app for pokemon with data saved into a database.

## Getting Started

1. Fork and clone this repository to your computer

2. To generate a new Rails application, in the project directory run:
```
rails new ./ -d postgresql
```
3. To install dependencies, run:
```
bundle install
```
4. Create a new Postgres database by running:
```
rails db:create
```
5. Generate a model for `pokemon` and specify the *table attributes*
```
rails g model Pokemon
```

Table attibutes (that you add onto the above command) should look something like:
```
# column name : data type .... 
  num:text name:text
```

Just make all of the pokemon columns type text or string.

Sample command with the table attributes:
```
rails g model Article title:string text:text
```


6. To create your pokemons table in your database:
```
rails db:migrate
```
7. Seed data into the newly created pokemons table by running:
```
rails db:seed
```

## Add the pokemon master

Create a `pokemon master` model that `belongs_to` one pokemon.

Create all of the normal routes for that `master` model: `resources :master`

## Deliverables

The deliverable is an app that has CRUD functionality on pokemon.

* GET `/` should return HTML page showing all pokemons currently in database (specifically in the pokemon table within the database)
* GET `/:id` (eg. `/2`) should return HTML page showing information about pokemon with primary ID 2 (read: primary ID, not `num` property)
* GET `/new` should return HTML page showing a form to create a new pokemon - upon submit, it should send POST request to `/`
* POST `/` should create a new pokemon and insert a new entry in the pokemon table, and should redirect to the home page `/`
* GET `/:id/edit` (eg. `/2/edit`) should return HTML page showing a form pre-populated with that pokemon's data - upon submit, it should send PUT request to `/:id`
* The `/:id/edit` HTML page should also have a "Delete" button that when clicked, will send a DELETE request to `/:id` to delete the current pokemon
* PUT `/:id` should update the data of the pokemon with the specified ID, and should redirect to the pokemon detail page `/:id`
* DELETE `/:id` should delete the entry of the pokemon with the specified ID, and should redirect to the home page `/`

### HINT

Refer to the gitbook materials for relevant commands and examples: https://wdi-sg.github.io/gitbook-2018/06-ruby-rails/rails-intro/readme.html

When you start to implement the 2nd model it will be helpful to have some data in `seed.rb`.

### Bonus:
- Create the full nested crud routes for the related `master` model.
- Change your data model by adding a migration. (Look up the rails docs for running a `change table` migration.)

## Tired of Pokemon yet?
You can also build a rails app that tracks and displays songs and song genres:

#### "Sortify" - Rails Associations (with Postgres SQL)

For this exercise, we'll create a "Sortify" Rails app which stores songs.

#### Deliverables
* Create a model for `genre` with name and description

* Create a model for `songs` with name and genre

* The associations are as follows:
  - Genre has_many Songs
  - Song belongs_to a Genre

* Implement controllers and views for:
  - show all genres `/genres/`
  - show all songs from one genre `/genres/:id/songs/`
    
### Bonus:
- Create the full nested crud routes for the related `song` model.
- Change your data model by adding a migration. (Look up the rails docs for running a `change table` migration.)
  
  
