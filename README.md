# Blog API with GraphQL

A simple blog application built with Ruby on Rails and GraphQL that allows you to:

- Add blog posts
- View all blog posts  
- View a specific blog post by ID

## Features

- **GraphQL API**: Modern API using GraphQL for flexible data querying
- **RESTful Design**: Built with Rails conventions
- **Data Validation**: Model validations ensure data integrity
- **Interactive Documentation**: GraphiQL interface for testing queries
- **Sample Data**: Pre-seeded with example blog posts

## Prerequisites

- Ruby 3.4.5 or higher
- Rails 8.0.2
- SQLite3

## Installation

1. Clone the repository
2. Install dependencies:
   ```bash
   bundle install
   ```

3. Set up the database:
   ```bash
   rails db:create
   rails db:migrate
   rails db:seed
   ```

4. Start the server:
   ```bash
   rails server
   ```

## API Endpoints

### GraphQL Endpoint
- **URL**: `POST /graphql`
- **Description**: Main GraphQL endpoint for all blog operations

### Documentation
- **URL**: `GET /`
- **Description**: API documentation and example queries

### GraphiQL Interface (Development)
- **URL**: `GET /graphiql`
- **Description**: Interactive GraphQL IDE for testing queries

## GraphQL Queries

### Get All Posts
```graphql
query {
  posts {
    id
    title
    body
    createdAt
    updatedAt
  }
}
```

### Get Specific Post
```graphql
query {
  post(id: "1") {
    id
    title
    body
    createdAt
    updatedAt
  }
}
```

### Create New Post
```graphql
mutation {
  createPost(title: "New Post Title", body: "This is the content of the new post.") {
    id
    title
    body
    createdAt
    updatedAt
  }
}
```

## Testing

Run the test suite:
```bash
rails test
```

## Project Structure

```
app/
├── controllers/
│   ├── application_controller.rb
│   └── graphql_controller.rb
├── graphql/
│   ├── myapp_schema.rb
│   └── types/
│       ├── base_object.rb
│       ├── base_interface.rb
│       ├── mutation_type.rb
│       ├── post_type.rb
│       └── query_type.rb
├── models/
│   ├── application_record.rb
│   └── post.rb
└── views/
    └── layouts/
        └── application.html.erb

config/
├── routes.rb
└── initializers/
    └── graphql.rb

db/
├── migrate/
│   └── 20250801032109_create_posts.rb
└── seeds.rb
```

## Database Schema

### Posts Table
- `id` (Primary Key)
- `title` (String, required, 3-255 characters)
- `body` (Text, required, minimum 10 characters)
- `created_at` (Timestamp)
- `updated_at` (Timestamp)

## Development

### Adding New Features

1. **New Model**: Create migration and model files
2. **GraphQL Types**: Add corresponding GraphQL types in `app/graphql/types/`
3. **Queries/Mutations**: Update `query_type.rb` and `mutation_type.rb`
4. **Tests**: Add corresponding tests

### Code Style

This project uses:
- RuboCop for code linting
- Rails conventions
- GraphQL best practices

## Deployment

The application is configured for deployment with:
- Kamal for deployment
- Docker support
- Production-ready configuration

## License

This project is open source and available under the [MIT License](LICENSE).
