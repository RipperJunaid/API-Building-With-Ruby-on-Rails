# Troubleshooting Guide

## Common Issues and Solutions

### 1. Rails::Application Error

**Error**: `uninitialized constant Rails::Application`

**Solution**: 
- ✅ Fixed: Updated `config/application.rb` with correct module name and proper Rails configuration
- Run: `ruby test_rails.rb` to verify Rails loads correctly

### 2. Database Connection Issues

**Error**: `could not connect to server`

**Solutions**:
1. Ensure PostgreSQL is running
2. Check credentials in `config/database.yml`
3. Create database: `rails db:create`
4. Run migrations: `rails db:migrate`

### 3. GraphQL Schema Issues

**Error**: `uninitialized constant Types::`

**Solutions**:
1. Ensure all GraphQL type files exist
2. Check file naming and module structure
3. Restart Rails server after changes

### 4. Gem Installation Issues

**Error**: `Could not find gem`

**Solutions**:
1. Run: `bundle install`
2. Check Gemfile syntax
3. Clear bundle cache: `bundle clean --force`

### 5. Permission Issues

**Error**: `Permission denied`

**Solutions**:
1. Check file permissions
2. Run as administrator if needed
3. Ensure proper file ownership

## Testing Steps

1. **Test Rails Loading**:
   ```bash
   ruby test_rails.rb
   ```

2. **Test Database**:
   ```bash
   rails db:create
   rails db:migrate
   rails db:seed
   ```

3. **Test GraphQL**:
   ```bash
   rails server
   # Then visit http://localhost:3000/graphiql
   ```

4. **Run Tests**:
   ```bash
   rails test
   ```

## Quick Fix Commands

```bash
# Reset everything
bundle install
rails db:drop db:create db:migrate db:seed
rails server
```

## Environment Variables

Make sure these are set correctly:
- `RAILS_ENV=development`
- `DATABASE_URL` (if using environment variable)
- PostgreSQL credentials in `config/database.yml`

## Log Files

Check these log files for detailed error information:
- `log/development.log`
- `log/test.log`
- `log/production.log` 