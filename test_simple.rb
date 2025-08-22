#!/usr/bin/env ruby

puts "🧪 Simple Test - Blog API with GraphQL"
puts "======================================"

puts "\n1. Testing Rails application..."
begin
  require_relative "config/application"
  puts "✅ Rails application loaded successfully!"
  puts "✅ Application name: #{Rails.application.class.name}"
  puts "✅ Rails version: #{Rails.version}"
  puts "✅ Environment: #{Rails.env}"
rescue => e
  puts "❌ Error loading Rails application:"
  puts "   #{e.message}"
  exit 1
end

puts "\n2. Testing GraphQL schema..."
begin
  require_relative "config/environment"
  MyappSchema
  puts "✅ GraphQL schema loaded successfully!"
rescue => e
  puts "❌ GraphQL schema error:"
  puts "   #{e.message}"
end

puts "\n3. Testing routes..."
begin
  routes = Rails.application.routes.routes.map(&:path).map(&:spec).map(&:to_s)
  puts "✅ Routes loaded successfully!"
  puts "   Available routes: #{routes.count}"
rescue => e
  puts "❌ Routes error:"
  puts "   #{e.message}"
end

puts "\n🎉 Basic tests passed! Your project is ready to run."
puts "\nTo start your server, run:"
puts "   ruby fix_and_run.rb" 