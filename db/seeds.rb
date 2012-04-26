# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

[Blog, Post, Comment].each do |model|
  model.all.each { |m| m.delete }
end

blog = Blog.create({title: "Test Blog -- for testing stuff", author: "Yo mama"}, :without_protection => true)



post_1 = Post.create(blog_id: blog.id, body: "Seed 1 post body", author: "Post magic!")
post_2 = Post.create(blog_id: blog.id, body: "Seed 1 post body", author: "Post magic!")
post_3 = Post.create(blog_id: blog.id, body: "Seed 1 post body", author: "Post magic!")
post_4 = Post.create(blog_id: blog.id, body: "Seed 1 post body", author: "Post magic!")

Comment.create(post_id: post_1.id, body: "Yo, I heard you liked post_1 in your posts so I put it in your comments_1", author: "Comment Dawg!")
Comment.create(post_id: post_1.id, body: "Yo, I heard you liked post_1 in your posts so I put it in your comments_2", author: "Comment Dawg!")
Comment.create(post_id: post_1.id, body: "Yo, I heard you liked post_1 in your posts so I put it in your comments_3", author: "Comment Dawg!")


Comment.create(post_id: post_2.id, body: "Yo, I heard you liked post_2 in your posts so I put it in your comments_1", author: "Comment Dawg!")
Comment.create(post_id: post_2.id, body: "Yo, I heard you liked post_2 in your posts so I put it in your comments_2", author: "Comment Dawg!")
Comment.create(post_id: post_2.id, body: "Yo, I heard you liked post_2 in your posts so I put it in your comments_3", author: "Comment Dawg!")