Category.create([{ name: "Urgent" }, { name: "Not Urgent" }, { name: "Important" }, { name: "Not Important" }])

10.times do
    week = Week.create(start_date: Faker::Date.between(from: 1.year.ago, to: Date.today), category_id: Category.pluck(:id).sample)

      Task.create([
            { title: Faker::Lorem.sentence, description: Faker::Lorem.paragraph, date: week.start_date, week_id: week.id }
              ])
end
