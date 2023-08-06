puts "clearing data"
Photos.destroy_all
puts "🌱 Seeding spices..."

# Seed your database here

photos = [
    { image: "app/images/photo1.jpg", purchase: false },
    { image: "app/images/photo2.jpg", purchase: false },
    { image: "app/images/photo3.jpg", purchase: false },
    { image: "app/images/photo4.jpg", purchase: false },
    { image: "app/images/photo5.jpg", purchase: false },
    { image: "app/images/photo6.jpg", purchase: false },
    { image: "app/images/photo7.jpg", purchase: false },
    { image: "app/images/photo8.jpg", purchase: false },
    { image: "app/images/photo9.jpg", purchase: false },
];

Photos.create!(photos)



puts "✅ Done seeding!"
