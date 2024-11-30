# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Category.create([{ name: "Urgent" }, { name: "Not Urgent" }, { name: "Important" }, { name: "Not Important" }])

10.times do
 week = Week.create(start_date: Faker::Date.between(from: 1.year.ago, to: Date.today), category_id: Category.pluck(:id).sample)

 Task.create([ { title: Faker::Lorem.sentence, description: Faker::Lorem.paragraph, date: week.start_date, week_id: week.id }
                                        ])

 urgent_category = Category.find_by(name: 'Urgent')
 Week.create(title: "Week 1 Plan", description: "Tasks for week 1", category_id: urgent_category.id)
end
