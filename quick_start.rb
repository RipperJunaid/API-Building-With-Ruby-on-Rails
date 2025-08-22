#!/usr/bin/env ruby

puts "🚀 Quick Start for Blog API with GraphQL"
puts "=========================================="

puts "\n1. Installing dependencies..."
system("bundle install")

puts "\n2. Setting up database..."
system("rails db:create")
system("rails db:migrate")
system("rails db:seed")

puts "\n3. Starting server..."
puts "   Your API will be available at:"
puts "   📍 http://localhost:3000 (Documentation)"
puts "   📍 http://localhost:3000/graphiql (GraphQL IDE)"
puts "   📍 POST http://localhost:3000/graphql (API Endpoint)"
puts "\n   Press Ctrl+C to stop the server"
puts "\n🎉 Starting Rails server..."

system("rails server") 