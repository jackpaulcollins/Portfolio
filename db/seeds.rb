3.times do |topic|
  Topic.create!(
    title: "#{topic}"
  )
end

puts "3 topics created"

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
    topic_id: Topic.last.id
  )
end

5.times do |skill|
  Skill.create!(
    title: "rails #{skill}",
    percent_utilized: 15
  )
end

8.times do |work|
  Work.create!(
    title: "title #{work}",
    subtitle: "Ruby on Rails",
    body: "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuri",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200"
  )
end

1.times do |work|
  Work.create!(
    title: "title #{work}",
    subtitle: "React",
    body: "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuri",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200"
  )
end

