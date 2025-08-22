#!/usr/bin/env ruby

puts "🔧 Fixing and Running Blog API with GraphQL"
puts "============================================"

puts "\n1. Cleaning up bundle..."
system("bundle clean --force")

puts "\n2. Installing dependencies..."
system("bundle install")

puts "\n3. Setting up database..."
system("rails db:drop") rescue nil
system("rails db:create")
system("rails db:migrate")
system("rails db:seed")

puts "\n4. Starting server..."
puts "   🎉 Your Blog API is now running!"
puts "   📍 http://localhost:3000 (Documentation & Health Check)"
puts "   📍 http://localhost:3000/graphiql (GraphQL IDE)"
puts "   📍 POST http://localhost:3000/graphql (API Endpoint)"
puts "\n   Press Ctrl+C to stop the server"
puts "\n🚀 Starting Rails server..."

system("rails server") 