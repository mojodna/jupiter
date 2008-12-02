require 'pp'

RAILS_DEFAULT_LOGGER = Logger.new(STDOUT)

## Get a single post

# puts "Post.find(5)"
# pp Post.find(5)
# puts "-----"

## Get all posts

# puts "Post.find(:all)"
# pp Post.find(:all)
# puts "-----"

## Create a new post

# puts "post = Post.new(...); post.save"
# post = Post.new(:title => "XMPP Post", :body => "A post created over XMPP")
# post.save # this does actually save the post, but since it's not synchronous, the id isn't known yet
# pp p
# puts "-----"

## Update an existing post

# puts "post = Post.find(:first); post.title = ...; post.save"
# post = Post.find(:first)
# post.title = "Replacement title"
# pp post.save # this does update the post, but it's not synchronous, so it breaks
# puts "-----"

## Destroy an instance of a post

# puts "post = Post.find(:first); post.destroy"
# post = Post.find(:first)
# pp post.destroy
# puts "-----"

## Destroy a post by id

# puts "post = Post.find(:first); Post.delete(post.id)"
# post = Post.find(:first)
# pp Post.delete(post.id)
# puts "-----"

## Check if a post exists

puts "Post.exists?(5)"
pp Post.exists?(5)
puts "Post.exists?(21)"
pp Post.exists?(21)
