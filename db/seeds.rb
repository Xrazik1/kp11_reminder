if Group.any? || Day.any?
  puts 'seeds already loaded'
  return
end

group1 = Group.create!(name: 'КС-42')
group1.create_week!

=begin
day1 = week1.days.create!(name: "Понедельник", date: "21.03.2019")
day2 = week1.days.create!(name: "Понедельник", date: "21.03.2019")
day3 = week1.days.create!(name: "Понедельник", date: "21.03.2019")
day4 = week1.days.create!(name: "Понедельник", date: "21.03.2019")
day5 = week1.days.create!(name: "Понедельник", date: "21.03.2019")
day6 = week1.days.create!(name: "Понедельник", date: "21.03.2019")
day7 = week1.days.create!(name: "Понедельник", date: "21.03.2019")

day1.notices.create!(content: '1 пара заменена на английский')
day1.notices.create!(content: '1 пара заменена на английский')
day1.notices.create!(content: '1 пара заменена на английский')

day2.notices.create!(content: '1 пара заменена на английский')
day2.notices.create!(content: '1 пара заменена на английский')
day2.notices.create!(content: '1 пара заменена на английский')

group2 = Group.create!(name: 'КС-31')
week2 = group2.create_week!

=end