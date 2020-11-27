require 'faker'

puts 'Clearing the DB'

Favorite.destroy_all
puts 'favorites destroyed'

Review.destroy_all
puts 'reviews destroyed'

Episode.destroy_all
puts 'episodes destroyed'

Podcast.destroy_all
puts 'podcasts destroyed'

User.destroy_all
puts 'users destroyed'

puts 'Starting seed file...'

# ----------------Start Creating Podcast -----------------
podcast1 = Podcast.new(
  name: "Dare to Lead with Brené Brown",
  description: "Brené’s newest podcast is based on her book, Dare to Lead, which debuted at #1 on the New York Times, and Wall Street Journal bestseller lists, and has become the ultimate courage-building playbook for leaders at every level. Brené writes, “The Dare to Lead podcast will be a mix of solo episodes and conversations with change-catalysts, culture-shifters, and as many troublemakers as possible. Innovating, creating, and building a better, more just world, requires daring leadership in every part of our daily lives – from work to home to community. Together, we’ll have conversations that help us show up, step up, and dare to lead.",
  category: "Psychology, life goals, female empowerment"
)

photo = URI.open('https://brenebrown.com/wp-content/uploads/2020/10/DTL-Trailer_Mobile.jpg')
podcast1.photo.attach(io: photo, filename: 'photo.jpg', content_type: 'image/jpg')
podcast1.save
puts "podcast created: #{podcast1.name}" # Should match the Podcast variable name you picked above

# ----------------Finish Creating Podcast -----------------

# ----------------Start Creating Episode -----------------

episode1 = Episode.create!(
  name: "Brené with Eric Mosley on Making Work Human",
  description: "In this episode, I talk with Eric Mosley, CEO and co-founder of Workhuman, about his new book, Making Work Human: How Human-Centered Companies are Changing the Future of Work and the World. His transformative work is based on 50 million data points and is leading the charge to dismantle old HR processes and challenge organizations to build new ways to connect the modern workforce. This is data with a heart and research with a goal to rehumanize.",
  podcast: podcast1 # Should match the Podcast variable name you picked above
)

puts "episode created: #{episode1.name}" # Should match the Episode variable you picked above
# ----------------Finish Creating Episode -----------------

# ----------------Start Creating Episode -----------------

episode2 = Episode.create!(
  name: "Brené with Guy Raz on How I Built This",
  description: "In this episode, I talk with Guy Raz, the creator and host of the popular podcasts How I Built This, Wisdom from the Top and The Rewind. Guy and I dig into the importance of an entrepreneurial mindset, what gets in the way of innovation, and the transformative power of story. I think his new book, HOW I BUILT THIS: The Unexpected Paths to Success From the World's Most Inspiring Entrepreneurs should be mandatory reading in business schools - it's an incredible playbook!",
  podcast: podcast1 # Should match the Podcast variable name you picked above
)

puts "episode created: #{episode2.name}" # Should match the Episode variable you picked above
# ----------------Finish Creating Episode -----------------

# ----------------Start Creating Episode -----------------

episode3 = Episode.create!(
  name: "Brené with Aiko Bethea on Inclusivity at Work: The Heart of Hard Conversations",
  description: "In this episode, I talk to friend, colleague and Diversity, Equity, and Inclusion expert, Aiko Bethea. We discuss empathy, accountability, and the power of listening and believing (including a very real role play). We also dissect the differences between transactional leadership and transformational leadership, and why courage is a prerequisite to lasting, meaningful change.",
  podcast: podcast1 # Should match the Podcast variable name you picked above
)

puts "episode created: #{episode3.name}" # Should match the Episode variable you picked above
# ----------------Finish Creating Episode -----------------

# ----------------Start Creating Episode -----------------

episode4 = Episode.create!(
  name: "Brené with Jon Meacham on the Soul of America",
  description: "In this episode, I talk to Pulitzer Prize–winning historian Jon Meacham about what history can teach us about leading through crises and deep political divides. We discuss the importance of humility, candor, and how our history reflects the ongoing fight between our better angels and our worst instincts.",
  podcast: podcast1 # Should match the Podcast variable name you picked above
)

puts "episode created: #{episode4.name}" # Should match the Episode variable you picked above
# ----------------Finish Creating Episode -----------------

# ----------------Start Creating Episode -----------------

episode5 = Episode.create!(
  name: "Brené with Abby Wambach on the New Rules of Leadership",
  description: "In this episode, I connect with Olympian, activist and author Abby Wambach on the new rules of leadership. Her book WOLFPACK, I kid you not, is on my top five must-read leadership books. I buy this book for everyone. It’s leadership gold.",
  podcast: podcast1 # Should match the Podcast variable name you picked above
)

puts "episode created: #{episode5.name}" # Should match the Episode variable you picked above
# ----------------Finish Creating Episode -----------------

# ----------------Start Creating Episode -----------------

episode6 = Episode.create!(
  name: "The Heart of Daring Leadership",
  description: "In this first solo episode of the Dare to Lead podcast, I talk about my passion for this work, what we're learning about courageous leadership and skill building, and the differences between armored and daring leadership.",
  podcast: podcast1 # Should match the Podcast variable name you picked above
)

puts "episode created: #{episode6.name}" # Should match the Episode variable you picked above
# ----------------Finish Creating Episode -----------------

# ----------------Start Creating Podcast -----------------
podcast2 = Podcast.new(
  name: "Secret Leaders - Dan Murray-Serter, Rich Martell",
  description: "Secret Leaders is the UK's top business podcast featuring the stories & struggles to success from founders of companies likes Slack, Deliveroo, Calm, Shazam, Jo Malone, & more. It also features some of the investors crazy enough to back them, and group interviews from sold out live events on managing mental health, equality, financing, managing in times of crisis and more. Check out our other show Represented for black startup founders pitching for funding from great investors.",
  category: "Business, Entreprenuership, Inspirational"
)

photo = URI.open('https://image.simplecastcdn.com/images/57f10120-6147-44e7-a515-a9cf396152a3/d4996e8e-c30e-401f-aaad-92e643e54074/3000x3000/sl-2020-spotify-03.jpg?aid=rss_feed')
podcast2.photo.attach(io: photo, filename: 'photo.jpg', content_type: 'image/jpg')
podcast2.save
puts "podcast created: #{podcast2.name}" # Should match the Podcast variable name you picked above

# ----------------Finish Creating Podcast -----------------

# ----------------Start Creating Episode -----------------

episode1 = Episode.create!(
  name: "Atomic Habits - Little things can transform your life",
  description: "If you've not read Atomic Habits by James Clear, we urge you to stop what you’re doing and go and get it. It's one of those books that once you've read it, you start to think about how those ideas can change your reality. “The book’s been out almost two years now and has sold over two million copies. And for me, the most gratifying thing is that the ideas are useful. The best thing is to see people using them to build better habits in their own life or to break habits that they've been struggling with for a while.”While James is not the father of thinking about habits, he is an expert on the subject, having built up a newsletter around the topic years before launching his bestselling book. “I'm not the smartest person, I'm not the fastest person, I’m not the first person to talk about this stuff. But I want to do it in a way that's useful.”By doing this, he's simply a master of demonstrating what best practice looks like and how that impact can impact your future, which above anything else, makes him a person you might want to listen to. ",
  podcast: podcast2 # Should match the Podcast variable name you picked above
)

puts "episode created: #{episode1.name}" # Should match the Episode variable you picked above
# ----------------Finish Creating Episode -----------------

# ----------------Start Creating Episode -----------------

episode2 = Episode.create!(
  name: "Arlan Hamilton - from homeless to VC founder in 3 years",
  description: "We are all for throwing two fingers up at the establishment, and who better to do that than an LGBTQ, black, woman investor? Meet Arlan Hamilton, Founder and Managing Partner of Backstage Capital. Backstage Capital is a fund that invests in under-estimated founders that are defined as women, people of colour and members of the LGBTQ community, who together represent the biggest economic opportunity for investment.Arlan’s latest book, It’s About Damn Time has been received with critical acclaim, because given the state of play in the world right now, it really is about damn time. She’s an inspiring hustler who’s come to venture capital from a completely adjacent industry. Just a few short years ago Arlan was homeless and now, 5 years on, her $10m boutique venture fund has invested in over 130 startups. She takes capital from an increasing list of big name investors, such as Mark Cuban, who trust her decision making to back the next generation of founders. “I didn't believe when they said things like, ‘you're not networked enough’, or ‘you're not connected enough’. I thought that was BS. But I did respect the ones who said, ‘you've got to really get your chops figured out’ and thankfully, no one could be more sure of that than myself, like, no one could be harder on me than I could be on myself.”",
  podcast: podcast2 # Should match the Podcast variable name you picked above
)

puts "episode created: #{episode2.name}" # Should match the Episode variable you picked above
# ----------------Finish Creating Episode -----------------

# ----------------Start Creating Podcast -----------------
podcast3 = Podcast.new(
  name: "The Tim Ferriss Show",
  description: "Tim Ferriss is a self-experimenter and bestselling author, best known for The 4-Hour Workweek, which has been translated into 40+ languages. Newsweek calls him the worlds best human guinea pig, and The New York Times calls him a cross between Jack Welch and a Buddhist monk.",
  category: "Self-starting, Entrepreneurship, Success"
)

photo = URI.open('https://i1.wp.com/tim.blog/wp-content/uploads/2014/04/timferrissshowart-1400x1400.jpg?fit=1200%2C1200&ssl=1')
podcast3.photo.attach(io: photo, filename: 'photo.jpg', content_type: 'image/jpg')
podcast3.save
puts "podcast created: #{podcast3.name}" # Should match the Podcast variable name you picked above

# ----------------Finish Creating Podcast -----------------

# ----------------Start Creating Episode -----------------

episode1 = Episode.create!(
  name: "#480: Dax Shepard on the Craft of Podcasting, Favorite Books, and Dancing With Your Demons",
  description: "Dax Shepard on the Craft of Podcasting, Favorite Books, and Dancing With Your Demons | Brought to you by ButcherBox premium meats delivered to your door, Oura smart ring wearable for personalized sleep and health insights, and Vuori comfortable and durable performance apparel Dax Shepard (@daxshepard) is an American actor, writer, director, and podcast host. He is known for his work in the feature films Without a Paddle, Zathura: A Space Adventure, Employee of the Month, Idiocracy, Let’s Go to Prison, Hit and Run, and CHiPs, the last pair of which he also wrote and directed, and the MTV practical joke reality series Punk’d. He is also known for portraying Crosby Braverman in the NBC comedy-drama series Parenthood.Since 2018, Dax has hosted the juggernaut podcast Armchair Expert, 2018’s most downloaded new podcast on Apple Podcasts, and winning “Breakout Podcast” at the 2019 iHeartRadio Podcast Awards.",
  podcast: podcast3 # Should match the Podcast variable name you picked above
)

puts "episode created: #{episode1.name}" # Should match the Episode variable you picked above
# ----------------Finish Creating Episode -----------------

# ----------------Start Creating Episode -----------------

episode2 = Episode.create!(
  name: "#478: Scott Kelly — Lessons Learned from 500+ Days in Space, Life-Changing Books, and The Art of Making Hard Choices",
  description: "Scott Kelly — Lessons Learned from 500+ Days in Space, Life-Changing Books, and The Art of Making Hard Choices | Brought to you by Rokform rugged cases for iPhone and Galaxy, Athletic Greens all-in-one supplement, and 99designs global creative platform. More on all three below. Scott Kelly (@StationCDRKelly) is a former military fighter pilot and test pilot, an engineer, a retired astronaut, and a retired US Navy captain. A veteran of four space flights, Scott commanded the International Space Station (ISS) on three expeditions and was a member of the yearlong mission aboard the ISS, the single longest space mission by an American astronaut. In October 2015, he set the American record for the total accumulated number of days spent in space.Go for Launch: How to Dream, Lead, and Achieve is Scott’s two-hour audio course available exclusively on Knowable.",
  podcast: podcast3 # Should match the Podcast variable name you picked above
)

puts "episode created: #{episode2.name}" # Should match the Episode variable you picked above
# ----------------Finish Creating Episode -----------------

# ----------------Start Creating Episode -----------------

episode3 = Episode.create!(
  name: "#477: Yuval Noah Harari on The Story of Sapiens, Forging the Skill of Awareness, and The Power of Disguised Books",
  description: "Yuval Noah Harari on The Story of Sapiens, Forging the Skill of Awareness, and The Power of Disguised Books | Brought to you by LinkedIn Jobs recruitment platform with ~700M users, Pique Tea high-end, instant tea crystals (pu-erh, etc.), and Allform premium, modular furnitureProf. Yuval Noah Harari (@harari_yuval) is a historian and bestselling author who is considered one of the world’s most influential public intellectuals today. His popular books—Sapiens: A Brief History of Humankind, Homo Deus: A Brief History of Tomorrow, and 21 Lessons for the 21st Century— have sold 27.5 million copies in 60 languages. They have been recommended by Barack Obama, Chris Evans, Janelle Monáe, Bill Gates, and many others. The Guardian has credited Sapiens with revolutionizing the nonfiction market and popularizing “brainy books.",
  podcast: podcast3 # Should match the Podcast variable name you picked above
)

puts "episode created: #{episode3.name}" # Should match the Episode variable you picked above
# ----------------Finish Creating Episode -----------------

# ----------------Start Creating Podcast -----------------
podcast4 = Podcast.new(
  name: "In Good Company",
  description: "A podcast for working women, hosted by Women Who founder Otegha Uwagba. Full of practical advice, fresh ideas, and interviews with smart, successful women, this is essential listening for working women – whether you’re just starting out, or already have years of experience.",
  category: "Women, Entrepreneurship, Business"
)

photo = URI.open('https://images.squarespace-cdn.com/content/v1/579d3f38197aea7c6b823d71/1563245419296-PSMTEABVOZG5YEKU8N56/ke17ZwdGBToddI8pDm48kJUlZr2Ql5GtSKWrQpjur5t7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1UfNdxJhjhuaNor070w_QAc94zjGLGXCa1tSmDVMXf8RUVhMJRmnnhuU1v2M8fLFyJw/In+Good+Company')
podcast4.photo.attach(io: photo, filename: 'photo.jpg', content_type: 'image/jpg')
podcast4.save
puts "podcast created: #{podcast4.name}" # Should match the Podcast variable name you picked above

# ----------------Finish Creating Podcast -----------------

# ----------------Start Creating Episode -----------------

episode1 = Episode.create!(
  name: "025: Elaine Welteroth. Harnessing Ambition. Navigating Office Politics.",
  description: "As the youngest ever person to be appointed editor-in-chief of a Condé Nast title – and only the second ever African American person to hold that position – former Teen Vogue Editor-in-Chief Elaine Welteroth was the driving force behind the magazine’s pivot to a more political, more socially conscious editorial stance that earned it an army of new readers and admirers.",
  podcast: podcast4 # Should match the Podcast variable name you picked above
)

puts "episode created: #{episode1.name}" # Should match the Episode variable you picked above
# ----------------Finish Creating Episode -----------------

# ----------------Start Creating Podcast -----------------
podcast5 = Podcast.new(
  name: "Masters of Scale with Reid Hoffman",
  description: "The best startup advice from Silicon Valley & beyond. Iconic CEOs — from Nike to Netflix, Starbucks to Slack — share the stories & strategies that helped them grow from startups into global brands.On each episode, host Reid Hoffman — LinkedIn cofounder, Greylock partner and legendary Silicon Valley investor — proves an unconventional theory about how businesses scale, while his guests share the story of how I built this company. Reid and guests talk entrepreneurship, leadership, strategy, management, fundraising. But they also talk about the human journey — with all its failures and setbacks. With original, cinematic music and hilariously honest stories, Masters of Scale is a business podcast that doesn’t sound like a business podcast. ",
  category: "Business, Private Equity, Technology"
)

photo = URI.open('https://pbs.twimg.com/profile_images/876926653565460481/ec53l0cw.jpg')
podcast5.photo.attach(io: photo, filename: 'photo.jpg', content_type: 'image/jpg')
podcast5.save
puts "podcast created: #{podcast5.name}" # Should match the Podcast variable name you picked above

# ----------------Finish Creating Podcast -----------------

# ----------------Start Creating Episode -----------------

episode1 = Episode.create!(
  name: "Rapid Response: Balancing Data with Gut Feeling, w/JetBlue's Joanna Geraghty",
  description: "After suffering record shattering drops in revenue from Covid-19, JetBlue has had to rethink every plan and every assumption. Joanna Geraghty, JetBlue's president and chief operating officer, explains how the airline built a new system for flexing the business, to ramp up only when demand arises, deploying cost cuts but no furloughs, and looking for opportunity amid the downdraft. With JetBlue and airlines across the board now grappling with a renewed global infection surge, Geraghty says her decisions rely on new types of data as well as gut feeling – from re-opening middle seats starting in January to expanding flights to London. The volume of choices Geraghty has to make and the uncertainty around the risks are dizzying. But despite the challenges, she says, JetBlue is rising up.",
  podcast: podcast5 # Should match the Podcast variable name you picked above
)

puts "episode created: #{episode1.name}" # Should match the Episode variable you picked above
# ----------------Finish Creating Episode -----------------

# ----------------Start Creating Episode -----------------

episode2 = Episode.create!(
  name: "76. How to find hidden value that others miss, w/The Black List's Franklin Leonard",
  description: "Forget looking for a needle in a haystack – instead, build a new type of metal detector, to find undervalued assets that others don’t see. That’s exactly what Franklin Leonard did when he started The Black List, an annual survey of screenplays everyone loved (but no one was making). Devise ways to find things no one else has found – or didn’t think to look for – and it could be the difference that drives you to scale. Cameo: Software engineer Tatiana Mac.Learn more about The Black List: https://blcklst.com/Learn more about Tatiana Mac: https://tatianamac.com/",
  podcast: podcast5 # Should match the Podcast variable name you picked above
)

puts "episode created: #{episode2.name}" # Should match the Episode variable you picked above
# ----------------Finish Creating Episode -----------------

# ----------------Start Creating Episode -----------------

episode3 = Episode.create!(
  name: "Rapid Response: A virtual-first workplace, w/Dropbox's Drew Houston",
  description: "In-office engagement or remote flexibility? We don't need to choose, says Dropbox co-founder and CEO Drew Houston. Facing the biggest shift in work habits in half a century, Houston has embarked on a radical experiment to reimagine how work gets done. The company's recently announced Virtual First plan dedicates all in-office activity to creative, team-based efforts, rebranding its offices as Dropbox Studios. Individual work will happen offsite, either at home or a self-chosen co-working space. Project teams set their own schedules. The unique opportunity of this moment, Houston says: How do we make work better? Yes, he admits, remote work feeds Dropbox's business, which now includes a collaboration with Zoom as part of a re-thought product roadmap. If Dropbox is going to design for the future of work, says Houston, then its own workforce needs to live in that future, right now.",
  podcast: podcast5 # Should match the Podcast variable name you picked above
)

puts "episode created: #{episode3.name}" # Should match the Episode variable you picked above
# ----------------Finish Creating Episode -----------------

# ----------------Start Creating Episode -----------------

episode4 = Episode.create!(
  name: "75. Nike’s Phil Knight: How to sell without selling",
  description: "Great branding is about identity – and it’s about matchmaking too. No one knows this better than the legendary co-founder of Nike, Phil Knight. When he and his partner, Hall of Fame track coach Bill Bowerman, started the sneaker company, they never tried to force-feed customers a product just to drive up the bottom line. They focused on one thing: making an excellent product for people who believed in the edgy Nike ethos. Because they knew, when there’s a mismatch between product and market, the bottom usually drops out. Instead, they told the world who the are, and then did everything they could to find their ideal customers. And made history. Cameo appearance: Eddy Lu (GOAT).",
  podcast: podcast5 # Should match the Podcast variable name you picked above
)

puts "episode created: #{episode4.name}" # Should match the Episode variable you picked above
# ----------------Finish Creating Episode -----------------

# ----------------Start Creating Podcast -----------------
podcast6 = Podcast.new(
  name: "The Joe Rogan Experience",
  description: "The official podcast of comedian Joe Rogan. Follow The Joe Rogan Clips show page for some of the best moments from the episodes.",
  category: "General, Politics, America"
)

photo = URI.open('https://upload.wikimedia.org/wikipedia/en/4/4b/The_Joe_Rogan_Experience_logo.jpg')
podcast6.photo.attach(io: photo, filename: 'photo.jpg', content_type: 'image/jpg')
podcast6.save
puts "podcast created: #{podcast6.name}" # Should match the Podcast variable name you picked above

# ----------------Finish Creating Podcast -----------------

# ----------------Start Creating Episode -----------------

episode1 = Episode.create!(
  name: "#1569 - John Mackey",
  description: "John Mackey is the CEO and co-founder of Whole Foods Market, co-founder of the nonprofit Conscious Capitalism, Inc., and co-author of Conscious Leadership: Elevating Humanity Through Business.",
  podcast: podcast6 # Should match the Podcast variable name you picked above
)

puts "episode created: #{episode1.name}" # Should match the Episode variable you picked above
# ----------------Finish Creating Episode -----------------

# ----------------Start Creating Episode -----------------

episode2 = Episode.create!(
  name: "#1566 - Nicholas Christakis",
  description: "Nicholas A. Christakis is the Sterling Professor of Social and Natural Science at Yale University, where he also directs the Human Nature Lab, and serves as Co-Director of the Yale Institute for Network Science. His most recent book is Apollo's Arrow: The Profound and Enduring Impact of Coronavirus on the Way We Live.",
  podcast: podcast6 # Should match the Podcast variable name you picked above
)

puts "episode created: #{episode2.name}" # Should match the Episode variable you picked above
# ----------------Finish Creating Episode -----------------

# ----------------Start Creating Podcast -----------------
podcast7 = Podcast.new(
  name: "Sh**ged Married Annoyed",
  description: "The only way Rosie and Chris Ramsey can have a conversation without being interrupted by a toddler or ending up staring at their phones is by doing a podcast. They’ll be chatting all about life, relationships, arguments, annoyances, parenting, growing up and everything in between. Each week they will answer questions from the public and a secret celebrity.",
  category: "Life, Comedy, General"
)

photo = URI.open('https://avalonuk.com/wp-content/uploads/2019/11/sma.jpg')
podcast7.photo.attach(io: photo, filename: 'photo.jpg', content_type: 'image/jpg')
podcast7.save
puts "podcast created: #{podcast7.name}" # Should match the Podcast variable name you picked above

# ----------------Finish Creating Podcast -----------------

# ----------------Start Creating Episode -----------------

episode1 = Episode.create!(
  name: "Ep 90. Bed Kegs",
  description: "Tensions are running high in the Ramsey household this week, so much so, there is some organic early beefs! Rosie and Chris discuss Outlander, sharing dreams and Nana Bridget. There's a Rosie's Mystery plus some brilliant QFTP.... communal underwear anyone?",
  podcast: podcast7 # Should match the Podcast variable name you picked above
)

puts "episode created: #{episode1.name}" # Should match the Episode variable you picked above
# ----------------Finish Creating Episode -----------------

# ----------------Start Creating Episode -----------------

episode2 = Episode.create!(
  name: "Ep 89. Where you bin my love?",
  description: "It's a busy week for the sma's and da's - Rosie has a new song to share and Chris (with some help from the PM) has a lockdown quiz for all to play along. The couple discuss Jacket potatoes v's Toasties, how to beat an egg and male personal hygiene.",
  podcast: podcast7 # Should match the Podcast variable name you picked above
)

puts "episode created: #{episode2.name}" # Should match the Episode variable you picked above
# ----------------Finish Creating Episode -----------------

# ----------------Start Creating Episode -----------------

episode3 = Episode.create!(
  name: "Ep. 87 Heels and shoulders",
  description: "The Ramsey's are back for another cracking episode - this week Rosie is getting in festive with some Halloween and Christmas plans. There's some beef, a mystery which Chris does pretty well with and some great QFTP's. Yoghurt anyone?",
  podcast: podcast7 # Should match the Podcast variable name you picked above
)

puts "episode created: #{episode3.name}" # Should match the Episode variable you picked above
# ----------------Finish Creating Episode -----------------

# ----------------Start Creating Podcast -----------------
podcast8 = Podcast.new(
  name: "talkSPORT Hit",
  description: "All the biggest sports news and stories for you every day from the world's biggest sports radio station! You can keep up to date with the latest sports news and listen to our exclusive live coverage of major events online, on DAB radio, on smart speakers, or via the talkSPORT app.",
  category: "Sport, Interviews"
)

photo = URI.open('https://talksport.com/wp-content/uploads/sites/5/2020/10/tshit.jpg?strip=all&w=440&quality=100')
podcast8.photo.attach(io: photo, filename: 'photo.jpg', content_type: 'image/jpg')
podcast8.save
puts "podcast created: #{podcast8.name}" # Should match the Podcast variable name you picked above

# ----------------Finish Creating Podcast -----------------

# ----------------Start Creating Episode -----------------

episode1 = Episode.create!(
  name: "talkSPORT Hit [26/11/20]",
  description: "The talkSPORT Hit for [26/11/20]. For more more on these stories throughout the day tune into talkSPORT - on DAB, online, through your smart speaker or on the talkSPORT app.",
  podcast: podcast8 # Should match the Podcast variable name you picked above
)

puts "episode created: #{episode1.name}" # Should match the
# ----------------Finish Creating Episode -----------------

# ----------------Start Creating Episode -----------------

episode2 = Episode.create!(
  name: "talkSPORT Hit [20/11/20]",
  description: "Elis James, Mike Bubbins and Steff Garrero meet up in the bar to chat about Maradona, Macaque Attack and Batting in 50 degrees.If you want to buy a T-Shirt, Hat or Mug head to www.distantpod.comYou can get in touch with the team on social mediahttps://twitter.com/distantpodhttps://facebook.com/distantpodhttps://instagram.com/distantpodYou can find our spin off podcast Michael Owen's Movie Club here:https://patreon.com/distantpodDocumentary choice from Elis: Diego Maradona.",
  podcast: podcast8 # Should match the Podcast variable name you picked above
)

puts "episode created: #{episode2.name}" # Should match the
# ----------------Finish Creating Episode -----------------

# ----------------Start Creating Podcast -----------------
podcast9 = Podcast.new(
  name: "Desert Island Discs",
  description: "Eight tracks, a book and a luxury: what would you take to a desert island? Guests share the soundtrack of their lives.",
  category: "Britain, Music, Life",
)

photo = URI.open('https://ichef.bbci.co.uk/images/ic/1040x1040/p05fzdc1.jpg')
podcast9.photo.attach(io: photo, filename: 'photo.jpg', content_type: 'image/jpg')
podcast9.save
puts "podcast created: #{podcast9.name}" # Should match the Podcast variable name you picked above

# ----------------Finish Creating Podcast -----------------

# ----------------Start Creating Episode -----------------

episode1 = Episode.create!(
  name: "Arsène Wenger, former football manager",
  description: "Arsène Wenger was the manager of Arsenal FC for 22 years, becoming the longest-serving and most successful manager in the club’s history.",
  podcast: podcast9 # Should match the Podcast variable name you picked above
)

puts "episode created: #{episode1.name}" # Should match the
# ----------------Finish Creating Episode -----------------

# ----------------Start Creating Episode -----------------

episode2 = Episode.create!(
  name: "David Mitchell, novelist",
  description: "David is the son of two artists, and grew up near the Malverns, where his father worked in the art department of the Royal Worcester porcelain factory. After studying at the University of Kent, he worked in a bookshop, and moved to Japan in the mid-1990s to teach English. Here he met his wife and put his mind to writing. His first two novels were published while still living in Hiroshima.",
  podcast: podcast9 # Should match the Podcast variable name you picked above
)

puts "episode created: #{episode2.name}" # Should match the
# ----------------Finish Creating Episode -----------------

# ----------------Start Creating Podcast -----------------
podcast10 = Podcast.new(
  name: "The Smart 7",
  description: "The Smart 7 is a brand new daily podcast that puts your brain into top gear by telling you everything you need to know for the day in less than 7 minutes. Everything from politics to entertainment, via sport and current affairs. It's a snapshot of the world.A fresh one is uploaded every weekday at 7am.You need the Smarts? We got the Smarts… The Smart 7 – daily at 7am.Presented by Jamie EastWritten by Liam ThompsonPart of the Daft Doris Network",
  category: "Business, News, Global News"
)

photo = URI.open('https://thumborcdn.acast.com/tPC0fbA3j8XKsvM823a7G0ufIkU=/1500x1500/https://mediacdn.acast.com/assets/35d3734f-1e29-4d0b-a646-15776be08249/-kaohur5j-the_smart_7_3000x3000.png')
podcast10.photo.attach(io: photo, filename: 'photo.jpg', content_type: 'image/jpg')
podcast10.save
puts "podcast created: #{podcast10.name}" # Should match the Podcast variable name you picked above

# ----------------Finish Creating Podcast -----------------

# ----------------Start Creating Episode -----------------

episode1 = Episode.create!(
  name: "Ep 189. Rishi has some bad news for you, Donald Trump pardons General Flynn and tributes to Diego Maradona",
  description: "It’s the final episode of series 4, and what better way to end the season than with alternative comedy legend (and Bake Off Extra Slice host) Jo Brand? Plus there’s a new verse to James’s Cawston Press chart-topper.Follow Jo Brand on Instagram: @iamnotjobrandRecorded and edited by Ben Williams for Plosive Productions.Artwork by Paul Gilbey (photography and design) and Amy Browne (illustrations).Follow Off Menu on Twitter and Instagram: @offmenuofficial.And go to our website www.offmenupodcast.co.uk for a list of restaurants recommended on the show.Watch Ed and James's YouTube series 'Just Puddings'. Watch here.",
  podcast: podcast10 # Should match the Podcast variable name you picked above
)

puts "episode created: #{episode1.name}" # Should match the
# ----------------Finish Creating Episode -----------------

# ----------------Start Creating Episode -----------------

episode2 = Episode.create!(
  name: "Ep 188. Bubbles for Christmas, Trump makes a speech, and Dua Lipa gets a shocking phone call...",
  description: "If youre familiar with British TV from the early 2000s, no doubt at this moment you have a shiver descending down your spine. As adrenaline floods your body and a scream emerges from your mouth, youll be remembering Nasty Nick - the Big Brother contestant who was so, so very nasty that they added the word Nastyto his name to show how nasty he was. Theres never been a nastier man the world said - or has there? Join us this week as we discover more about the OG Nasty Nick - Prince Nicholas Andreyevich Bolkonski. Hes got impeccable time keeping, rigorous standards and an extremely powdery wig",
  podcast: podcast10 # Should match the Podcast variable name you picked above.
)

puts "episode created: #{episode2.name}" # Should match the
# ----------------Finish Creating Episode -----------------

10.times do
  user = User.create(
    email: Faker::Internet.email,
    password: '123456'
  )

  puts "user created: #{user.email}"

  review = Review.create(
    content: Faker::Restaurant.review,
    rating: rand(1..5),
    tag: Faker::Music.genre,
    user: user,
    episode: Episode.all.sample
  )

  puts "review created: #{review.id}"

  favorite = Favorite.create(
    user: user,
    episode: Episode.all.sample,
    finished: [false, true].sample
  )

  puts "favorite created: #{favorite.id}"

end

puts "Finished!!"

puts "Created #{User.count} Users"
puts "Created #{Podcast.count} Podcasts"
puts "Created #{Episode.count} Episodes"
puts "Created #{Review.count} Reviews"
puts "Created #{Favorite.count} Favorites"

