# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Post.delete_all
User.delete_all
Tag.delete_all
user_1 = User.create!(
    email: 'jhondoe@example.com',
    name: 'John Doe',
    password: 'jdoe1234'
)
user_2 = User.create!(
    email: 'verycool@example.com',
    name: 'Javito Contador',
    password: 'javito123'
    )
user_3 = User.create!(
    email: 'originalemail@example.com',
    name: 'Martin Hargous',
    password: 'mhargous123'
    )
user_4 = User.create!(
    email: 'myfirstemail@example.com',
    name: 'Domingo Funezalida',
    password: 'domingof123'
    )
user_5 = User.create!(
    email: 'alexilaiho@example.com',
    name: 'Alexi Laiho',
    password: 'alaiho_CoB123'
    )


p1 = Post.create!(
    title: 'Post 1',
    content: 'I am happy to be here!!',
    published_at: '2024-04-08 10:15:30',
    answers_count: 35,
    likes_count: 0,
    user:user_1
    )
p2 = Post.create!(
    title: 'Attack the D Point',
    content: 'Gramercy!',
    published_at: '2022-11-20 08:45:12',
    answers_count: 34525,
    likes_count: 9679452,
    user:user_2
    )
p3 = Post.create!(
    title: 'Amormindu?',
    content: 'Wololo!! Talar? Cortar Madeira!',
    published_at: '2022-06-12 16:20:05',
    answers_count: 34,
    likes_count: 912351,
    user:user_3
    )
p4 = Post.create!(
    title: 'Mikaeli, you successfully hit metal 17 times, so you are now proud owner of this photograph of motorcar',
    content: 'I am Happy',
    published_at: '2024-09-03 14:55:40',
    answers_count: 3,
    likes_count: 24,
    user:user_4
    )
p5 = Post.create!(
    title: 'I am bored...',
    content: 'I dont know what to do... any good movies or tv shows to watch??',
    published_at: '2023-07-12 18:37:49',
    answers_count: 73,
    likes_count: 21,
    user:user_5
    )
p6 = Post.create!(
    title: 'What a weird social media',
    content: 'After five minutes all I have found is weird videogame dialogs!',
    published_at: '2024-04-08 10:20:30',
    answers_count: 987565,
    likes_count: 0,
    user:user_1
    )    
p7 = Post.create!(
    title: 'Anyone want to play War thunder?',
    content: 'If you want to play war thunder send me a dm!',
    published_at: '2023-08-17 09:30:18',
    answers_count: 875,
    likes_count: 87,
    user:user_2
    )   
p8 = Post.create!(
    title: 'Why my pc keeps crashing when i play a AoE2 ranked?',
    content: 'please help me i dont know what to do!!! the drivers are all up to date..',
    published_at: '2023-12-10 17:13:59',
    answers_count: 371,
    likes_count: 11,
    user:user_3
    )  
p9 = Post.create!(
    title: 'Is Mikaeli stuck in a time loop?',
    content: 'Why is always Mikaeli happy of winning a photograph of motor car, since property is theft so he should be under arrest',
    published_at: '2024-01-05 07:25:50',
    answers_count: 821,
    likes_count: 3035,
    user:user_4
    )         
p10 = Post.create!(
    title: 'Another day...',
    content: 'Still looking for something interesting to do. Any suggestions?',
    published_at: '2023-07-13 09:22:15',
    answers_count: 1,
    likes_count: 0,
    user:user_5   
    )    

t1 = Tag.create!(
    name: "games"
)
t2 = Tag.create!(
    name: "memes"
)
t3 = Tag.create!(
    name: "Tag 1"
)

p1.tags << t1
p1.tags << t2
p2.tags << t2
p3.tags << t3
p4.tags << t1
p5.tags << t2
p6.tags << t3
p7.tags << t1
p8.tags << t2
p9.tags << t3
p10.tags << t1
