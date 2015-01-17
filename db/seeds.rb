# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(
  id: "1",
  provider: "Development",
  uid: "0000",
  name: "Test User"
)

Story.create(
  content: "Ever since that night, things have been different. I mean, my life changed- for the better, not that it was very bad to start with. What changed for me is now I have hope- hope for a better future- for a better and brighter tomorrow, and a better day after. It's a hope that is continually growing over time, a hope that I've learnt to rely on. My joy comes from when that hope stretches to others- when I see other's lives radically changed by the love and the hope that we have in Christ. That's what I live for.",
  created_at: Time.now - 3.hours,
  user: User.first
)

Story.create(
  content: "I first met our Heavenly Father 17 years ago, we were inseparable. Four years on and my parents divorced, which lead me to roll into a huge ball of wrongs leading me to a even darker place. As a result I found myself addicted to ice, which two years later ended with me in ICU Sydney hospital for 3 weeks, it was unlikely I would survive. I did, however, survive. It took a few years or recalculating my life, as I realized The Lord had not forgotten me and, by his grace used my boyfriend Phillip’s Godly family to reconnect.",
  created_at: Time.now - 1.hours,
  user: User.first
)

Story.create(
  content: "I was brought up in a Christian home and as far as I can remember, I have always believed in God. However, I didn't have a perfect family, and things were really hard. Even through that, I never stopped believing in God. In my mind, I was absolutely convinced of the truth, but I was angry at the church for numerous reasons. I went through my own stage of questioning – not God’s existence but questioning humanity. After a lot of healing I arrived at the stage where I can accept everything that’s happened, and I know God is real.",
  created_at: Time.now - 10.minutes,
  user: User.first
)

Story.create(
  content: "100 words Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris.",
  created_at: Time.now,
  user: User.first
)