#!/usr/bin/env ruby

puts "🚀 Simple Start - Blog API with GraphQL"
puts "========================================"

puts "\n1. Installing dependencies..."
system("bundle install")

puts "\n2. Starting server without database..."
puts "   🎉 Your Blog API is now running!"
puts "   📍 http://localhost:3000 (Documentation)"
puts "   📍 http://localhost:3000/graphiql (GraphQL IDE)"
puts "   📍 POST http://localhost:3000/graphql (API Endpoint)"
puts "\n   Press Ctrl+C to stop the server"
puts "\n🚀 Starting Rails server..."

# Set environment to skip database
ENV['SKIP_DATABASE'] = 'true'
system("rails server") 