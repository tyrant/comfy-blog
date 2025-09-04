#!/usr/bin/env ruby
require_relative 'config/environment'

begin
  puts "All sites: #{Comfy::Cms::Site.all.map(&:identifier)}"
  puts "All layouts: #{Comfy::Cms::Layout.all.map(&:identifier)}"
  puts "All blog posts: #{Comfy::Blog::Post.count}"
  
  # Try to find site by different criteria
  site = Comfy::Cms::Site.first
  puts "First site: #{site.inspect}"
  
  if site
    layout = site.layouts.first
    puts "First layout: #{layout.inspect}"
    
    posts = site.blog_posts
    puts "Posts count: #{posts.count}"
  end
  
  puts "Test completed successfully"
rescue => e
  puts "Error: #{e.class}: #{e.message}"
  puts e.backtrace.first(10)
end
