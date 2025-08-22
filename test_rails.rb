#!/usr/bin/env ruby

# Simple script to test if Rails loads correctly
puts "Testing Rails application..."

begin
  require_relative "config/application"
  puts "✅ Rails application loaded successfully!"
  puts "✅ Application name: #{Rails.application.class.name}"
  puts "✅ Rails version: #{Rails.version}"
  puts "✅ Environment: #{Rails.env}"
rescue => e
  puts "❌ Error loading Rails application:"
  puts "   #{e.message}"
  puts "   #{e.backtrace.first}"
  exit 1
end

puts "\nTesting database connection..."
begin
  require_relative "config/environment"
  ActiveRecord::Base.connection
  puts "✅ Database connection successful!"
rescue => e
  puts "❌ Database connection failed:"
  puts "   #{e.message}"
  puts "   Make sure PostgreSQL is running and credentials are correct in config/database.yml"
end

puts "\nTesting GraphQL schema..."
begin
  MyappSchema
  puts "✅ GraphQL schema loaded successfully!"
rescue => e
  puts "❌ GraphQL schema error:"
  puts "   #{e.message}"
end

puts "\n🎉 Rails application is ready!" 