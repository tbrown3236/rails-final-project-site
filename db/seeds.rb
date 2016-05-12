# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

include Faker
 # 100.times do
 #  a = Product.create(name: Commerce.product_name, description: Lorem.paragraph(3), quantity: Number.number(4), sell_price: Number.decimal(2),
 #                cost_of_product: Number.decimal(2), shipping_weight: Number.decimal(2), thumbnail: Avatar.image("my-own-slug", "50x50"),
 #                picture: Avatar.image("my-own-slug", "250x250")
 # )
 # a.save
 # end
 #rand(1..10).times do
 # a.comments.create(author: Name.name, content:Lorem.sentence(10),rating: rand(1..5))
 #end

 # 100.times do
 # b = Article.create(title:Name.title, author:Name.name,
 #                    published_date: Faker::Time.between(2.days.ago,Time.now, :all),
 #                   published:1,
 #                      content:Lorem.paragraph(3),
 #                     thumbnail:Avatar.image("my-own-slug", "50x50"),
 #                     created_at: Faker::Time.between(2.days.ago,Time.now, :all),
 #                    updated_at:Faker::Time.between(2.days.ago,Time.now, :all)
 #
 # )
 #
 # puts b.inspect

 # end

#
# 20.times do
#   blog = Blog.create(
#                  author: Name.name,
#                  title: Company.buzzword,
#                  content: Lorem.paragraph(2),
#                  published_date: Faker::Time.between(2.days.ago, Time.now, :all)
#   )
#   blog.save
#   rand(1..10).times do
#     name = Name.name
#     comment = blog.blog_comments.create(
#         author: name,
#         content: Lorem.sentence(10),
#         rating: rand(1..5),
#         avatar_image: Avatar.image(name, "50x50")
#     )
#     comment.save
#   end


#end
