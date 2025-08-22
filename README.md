My Blog API Project Journal (Rails + GraphQL)

Day 1 – Starting Out I wanted to build a simple blog API using Ruby on Rails and GraphQL. The idea was to let users:

Add blog posts

View all posts

View a single post by its ID

I picked GraphQL because it’s flexible and Rails because I’m comfortable with it.

Day 2 – Setting Things Up What I needed:

Ruby 3.4.5 or newer

Rails 8.0.2

I created a new Rails app and added the GraphQL gem. Then ran bundle install to get all the dependencies.

Day 3 – Making the Database I created a Post model with a migration. Each post has:

A title (3–255 characters)

A body (at least 10 characters)

Timestamps

Migration file: create_table :posts do |t| t.string :title, null: false t.text :body, null: false t.timestamps end

Day 4 – Adding GraphQL I set up the GraphQL schema and types:

PostType for the post fields

QueryType to fetch posts

MutationType to create posts

Example queries: Get all posts: query { posts { id title body createdAt updatedAt } }

Get one post: query { post(id: "1") { id title body createdAt updatedAt } }

Create a post: mutation { createPost(title: "New Post", body: "This is the content.") { id title body createdAt updatedAt } }

Day 5 – Testing Stuff I ran rails test to check everything. Also added logging with graphql-rails_logger to see what queries were being made.

Day 6 – Quick Start Script I made a script called quick_start.rb to make setup easier. Running ruby quick_start.rb does:

Installs dependencies

Sets up the database

Starts the server

Day 7 – API Endpoints Main routes:

/graphql – for GraphQL queries

/ – shows docs and examples

/graphiql – GraphQL IDE (only in dev)

/health – system status

Day 8 – Folder Structure Project layout: app/ controllers/ graphql/ types/ models/ views/ config/ routes.rb initializers/ db/ migrate/ seeds.rb

Day 9 – Adding New Stuff When I added new features, I usually:

Made a model and migration

Added GraphQL types

Updated queries and mutations

Wrote some tests

Used RuboCop for linting and followed Rails conventions.

Day 10 – Getting Ready for Deployment Set it up for production using:

Kamal for deployment

Docker for containers

Day 11 – Switching to PostgreSQL (Optional) To use PostgreSQL instead of SQLite:

Change the Gemfile: gem "pg", "~> 1.5"

Update database.yml

Run: bundle install rails db:create db:migrate db:seed

Day 12 – Fixing Common Problems If something breaks:

Database not working? rails db:create db:migrate db:seed

Gems missing? bundle install

Server acting up? rails server

To reset everything: ruby quick_start.rb

License This project is open source under the MIT License.
