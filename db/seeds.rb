10.times do
  2.times do
    post1 = Post.new
    post1.title = Faker::Company.bs
    post1.kind = "image"
    post1.content = Faker::Avatar.image
    post1.save

    5.times { post1.hearts.create }
  end


  1.times do
    post2 = Post.new(title: Faker::Company.bs, kind: "text")
    post2.content = Faker::Lorem.paragraph(5, false, 4)
    post2.save

    3.times { post2.hearts.create }
  end
end
