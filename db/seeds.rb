puts 'Destroying old database...'
Group.destroy_all
puts "Groups destroy"
Video.destroy_all
puts "Video destroy"
GroupsUser.destroy_all
puts 'GroupsUser destroy'
User.destroy_all
puts "User destroy"
Challenge.destroy_all
puts "Challenge destroy"

puts "Generating Users"

cuervo = User.new(email: 'axelresnik@gmail.com',
            password: '123456',
            username: 'Cuervo',
            remote_photo_url: 'https://res.cloudinary.com/dn4gmiobc/image/upload/v1561971341/dkimxfxzsauhsl7ijsvh.png',
            average_lateness: rand(0..25))

marko = User.new(email: 'marko@app2wait.com',
            password: '123456',
            username: 'Marko',
            remote_photo_url: 'http://res.cloudinary.com/dn4gmiobc/image/upload/v1561978082/gxn0tymnoggmdbhayhfn.png',
            average_lateness: rand(0..25))

ben = User.new(email: 'ben.attali8@gmail.com',
            password: '123456',
            username: 'Ben',
            remote_photo_url: 'http://res.cloudinary.com/dn4gmiobc/image/upload/v1561978084/f0ts7c7y3p6xmngnckxo.png',
            average_lateness: rand(0..25))

benya = User.new(email: 'benya@app2wait.com',
            password: '123456',
            username: 'Benya',
            remote_photo_url: 'http://res.cloudinary.com/dn4gmiobc/image/upload/v1561978086/lrvevguguuho8951i7kf.png',
            average_lateness: rand(0..25))

charly = User.new(email: 'charly@app2wait.com',
            password: '123456',
            username: 'Charly',
            remote_photo_url: 'http://res.cloudinary.com/dn4gmiobc/image/upload/v1561978087/uugd4jho6kjam6yaa0qh.png',
            average_lateness: rand(0..25))

clara = User.new(email: 'clara@app2wait.com',
            password: '123456',
            username: 'Clara',
            remote_photo_url: 'http://res.cloudinary.com/dn4gmiobc/image/upload/v1561978088/jqnkwefbacd9nfsw5k8w.jpg',
            average_lateness: rand(0..25))

david = User.new(email: 'david@app2wait.com',
            password: '123456',
            username: 'David',
            remote_photo_url: 'http://res.cloudinary.com/dn4gmiobc/image/upload/v1561978090/evphzyzlqtjo4fux6ala.png',
            average_lateness: rand(0..25))

gaby = User.new(email: 'gaby@app2wait.com',
            password: '123456',
            username: 'Gaby',
            remote_photo_url: 'http://res.cloudinary.com/dn4gmiobc/image/upload/v1561978091/bvc2vczpy6isnjaeudox.png',
            average_lateness: rand(0..25))

ilan = User.new(email: 'szenkerilan@gmail.com',
            password: '123456',
            username: 'Ilan',
            remote_photo_url: 'http://res.cloudinary.com/dn4gmiobc/image/upload/v1561978092/nfsqulkptkrpbljaujdi.png',
            average_lateness: rand(0..25))

joe = User.new(email: 'joe@app2wait.com',
            password: '123456',
            username: 'Joe',
            remote_photo_url: 'http://res.cloudinary.com/dn4gmiobc/image/upload/v1561978361/tjjoec9fy9yhh2qt2yup.png',
            average_lateness: rand(0..25))

max = User.new(email: 'max@app2wait.com',
            password: '123456',
            username: 'Max',
            remote_photo_url: 'http://res.cloudinary.com/dn4gmiobc/image/upload/v1561978093/sfgut6oafmvrdbd6ev7j.png',
            average_lateness: rand(0..25))

maya = User.new(email: 'maya@app2wait.com',
            password: '123456',
            username: 'Maya',
            remote_photo_url: 'http://res.cloudinary.com/dn4gmiobc/image/upload/v1561978094/e3mhhepfpnimwhz0yfma.png',
            average_lateness: rand(0..25))

mel = User.new(email: 'mel@app2wait.com',
            password: '123456',
            username: 'Mel',
            remote_photo_url: 'http://res.cloudinary.com/dn4gmiobc/image/upload/v1561978096/nqwbbknexnqsf8twpusq.png',
            average_lateness: rand(0..25))

rabea = User.new(email: 'rabea@app2wait.com',
            password: '123456',
            username: 'Rabea',
            remote_photo_url: 'http://res.cloudinary.com/dn4gmiobc/image/upload/v1561978097/g45lunatp16ywfmrxnit.jpg',
            average_lateness: rand(0..25))

romy = User.new(email: 'romy@app2wait.com',
            password: '123456',
            username: 'Romy',
            remote_photo_url: 'http://res.cloudinary.com/dn4gmiobc/image/upload/v1561978098/t49zxpy7ueb7jajf0t5d.png',
            average_lateness: rand(0..25))

valentina = User.new(email: 'valentina@app2wait.com',
            password: '123456',
            username: 'Valentina',
            remote_photo_url: 'http://res.cloudinary.com/dn4gmiobc/image/upload/v1561978364/o6z6zzjtrt3sxdfduzra.png',
            average_lateness: rand(0..25))
cuervo.save!
marko.save!
ben.save!
benya.save!
charly.save!
clara.save!
david.save!
gaby.save!
ilan.save!
joe.save!
max.save!
maya.save!
mel.save!
rabea.save!
romy.save!
valentina.save!

puts "Finished generating users"

puts "Generating challenges"


pushups = Challenge.new(name: "Pushups",
                        remote_photo_url: "https://res.cloudinary.com/dyseqqsmw/image/upload/v1562170471/strong_1_pith7r.png")

the_dance = Challenge.new(name: "The Dance",
                         remote_photo_url: "https://res.cloudinary.com/dyseqqsmw/image/upload/v1562170516/dancing_lrsyen.png")
the_bill = Challenge.new(name: "The Bill",
                           remote_photo_url: "https://res.cloudinary.com/dyseqqsmw/image/upload/v1562170590/earnings_qqhonj.png")
the_phonecall = Challenge.new(name: "The Call",
                         remote_photo_url: "https://res.cloudinary.com/dyseqqsmw/image/upload/v1562170550/phone-call_kme56d.png")
the_shot = Challenge.new(name: "The Shot",
                         remote_photo_url: "https://res.cloudinary.com/dyseqqsmw/image/upload/v1562170628/shot_zvlxd5.png")
the_singing = Challenge.new(name: "The Singing",
                         remote_photo_url: "https://res.cloudinary.com/dyseqqsmw/image/upload/v1562170667/microphone_1_ut5jam.png")
the_airguitare = Challenge.new(name: "Air guitar",
                         remote_photo_url: "https://res.cloudinary.com/dyseqqsmw/image/upload/v1562170688/acoustic-guitar_1_ls8w5k.png")
the_chilisauce = Challenge.new(name: "The Chili",
                         remote_photo_url: "https://res.cloudinary.com/dyseqqsmw/image/upload/v1562170710/chili-pepper_1_stsg1a.png")



pushups.save!
the_bill.save!
the_phonecall.save!
the_dance.save!
the_shot.save!
the_singing.save!
the_airguitare.save!
the_chilisauce.save!

puts "Finished generating challenges"

puts "Generating Levels"


# -------------------------

Level.create!(time: 10,
              description: "Do 10 pushups",
              challenge_id: pushups.id)

Level.create!(time: 20,
              description: "Do 25 pushups",
              challenge_id: pushups.id)

Level.create!(time: 30,
              description: "Do each pushup with a clap",
              challenge_id: pushups.id)

# -------------------------

Level.create!(time: 10,
              description: "Pay for a round of beer",
              challenge_id: the_bill.id)

Level.create!(time: 20,
              description: "Add nachos",
              challenge_id: the_bill.id)

Level.create!(time: 30,
              description: "Time for some caviar",
              challenge_id: the_bill.id)

# -------------------------

Level.create!(time: 10,
              description: "Do an air guitar performance",
              challenge_id: the_airguitare.id)

Level.create!(time: 20,
              description: "Do it in rock-n-roll style",
              challenge_id: the_airguitare.id)

Level.create!(time: 30,
              description: "Sing along to your performance",
              challenge_id: the_airguitare.id)

# -------------------------

Level.create!(time: 10,
              description: "Call a random number and talk for 30 seconds",
              challenge_id: the_phonecall.id)

Level.create!(time: 20,
              description: "Make the person say the word 'eggplant'",
              challenge_id: the_phonecall.id)

Level.create!(time: 30,
              description: "Call your ex",
              challenge_id: the_phonecall.id)

# -------------------------

Level.create!(time: 10,
              description: "Arrive doing the moonwalk",
              challenge_id: the_dance.id)

Level.create!(time: 20,
              description: "Arrive doing the chicken dance",
              challenge_id: the_dance.id)

Level.create!(time: 30,
              description: "Scream 'Cook-a-Doodle-Do!' to your dance",
              challenge_id: the_dance.id)

# -------------------------

Level.create!(time: 10,
              description: "You have to take a shot",
              challenge_id: the_shot.id)

Level.create!(time: 20,
              description: "You have to take a shot... without your hands",
              challenge_id: the_shot.id)

Level.create!(time: 30,
              description: "You have 2 minutes to take 3 shots",
              challenge_id: the_shot.id)

# -------------------------
Level.create!(time: 10,
              description: "Enter the room singing opera",
              challenge_id: the_singing.id)

Level.create!(time: 20,
              description: "Sing your favorite song in another language",
              challenge_id: the_singing.id)

Level.create!(time: 30,
              description: "Rap as fast as possible",
              challenge_id: the_singing.id)

# -------------------------

Level.create!(time: 10,
              description: "You have to drink a teaspoon of chilli sauce",
              challenge_id: the_chilisauce.id)

Level.create!(time: 20,
              description: "The spoon's not enough, it's time for a shot",
              challenge_id: the_chilisauce.id)

Level.create!(time: 30,
              description: "Pour chilli sauce all over your face",
              challenge_id: the_chilisauce.id)

# -------------------------

puts "Finished generating Levels"

puts "Generating Groups"

axel = Group.new(name: 'Axel',
                   remote_photo_url: 'https://res.cloudinary.com/dn4gmiobc/image/upload/v1561971341/dkimxfxzsauhsl7ijsvh.png',
                   user: ben)
jo = Group.new(name: 'Joe',
                   remote_photo_url: 'http://res.cloudinary.com/dn4gmiobc/image/upload/v1561978361/tjjoec9fy9yhh2qt2yup.png',
                   user: ben)
gabi = Group.new(name: 'Gaby',
                   remote_photo_url: 'http://res.cloudinary.com/dn4gmiobc/image/upload/v1561978091/bvc2vczpy6isnjaeudox.png',
                   user: cuervo)
app2wait = Group.new(name: 'app2wait',
                    remote_photo_url: 'https://images-eu.ssl-images-amazon.com/images/I/61n252YpctL.png',
                    user: rabea)

soccer = Group.new(name: 'soccer',
                  remote_photo_url: 'https://i.linio.com/p/9e447eff5bfbea39ea57d204879d0b3d-product.jpg',
                  user: cuervo)

france = Group.new(name: 'france',
                   remote_photo_url: 'https://upload.wikimedia.org/wikipedia/en/c/c3/Flag_of_France.svg',
                   user: max)
axel.save!
jo.save!
gabi.save!
app2wait.save!
soccer.save!
france.save!

puts "Finished generating Groups"

puts "Generating Groups/Users"

GroupsUser.create!(group_id: axel.id, user_id: ben.id)
GroupsUser.create!(group_id: axel.id, user_id: cuervo.id)

GroupsUser.create!(group_id: jo.id, user_id: cuervo.id)
GroupsUser.create!(group_id: jo.id, user_id: ilan.id)
GroupsUser.create!(group_id: jo.id, user_id: ben.id)
GroupsUser.create!(group_id: jo.id, user_id: joe.id)

GroupsUser.create!(group_id: gabi.id, user_id: cuervo.id)
GroupsUser.create!(group_id: gabi.id, user_id: ilan.id)
GroupsUser.create!(group_id: gabi.id, user_id: ben.id)
GroupsUser.create!(group_id: gabi.id, user_id: joe.id)

GroupsUser.create!(group_id: app2wait.id, user_id: cuervo.id)
GroupsUser.create!(group_id: app2wait.id, user_id: ilan.id)
GroupsUser.create!(group_id: app2wait.id, user_id: ben.id)

GroupsUser.create!(group_id: soccer.id, user_id: cuervo.id)
GroupsUser.create!(group_id: soccer.id, user_id: ilan.id)
GroupsUser.create!(group_id: soccer.id, user_id: ben.id)
GroupsUser.create!(group_id: soccer.id, user_id: max.id)
GroupsUser.create!(group_id: soccer.id, user_id: joe.id)

GroupsUser.create!(group_id: france.id, user_id: ilan.id)
GroupsUser.create!(group_id: france.id, user_id: david.id)

puts "Finished generating Groups/Users"

puts "Generating Videos"

Video.create!(remote_video_url: 'https://res.cloudinary.com/dyseqqsmw/video/upload/v1562769553/ben_push_ups_uwy9v1.mp4',
              challenge_id: pushups.id,
              user_id: clara.id,
              tag: "Ben doesn't want to be late anymore!")
Video.create!(remote_video_url: 'https://res.cloudinary.com/dyseqqsmw/video/upload/v1562769609/romi_chicken_dance_m30asu.mp4',
              challenge_id: the_dance.id,
              user_id: benya.id,
              tag: "Chicken dance!")
Video.create!(remote_video_url: 'https://res.cloudinary.com/dyseqqsmw/video/upload/v1562769647/bryan_shot_rjtdq7.mp4',
              challenge_id: the_shot.id,
              user_id: mel.id,
              tag: "Twas the beginning of the night...")
Video.create!(remote_video_url: 'https://res.cloudinary.com/dyseqqsmw/video/upload/v1562769679/max_ait_guitare_hhd7ug.mp4',
              challenge_id: the_airguitare.id,
              user_id: rabea.id,
              tag: "Elvis in da house")
Video.create!(remote_video_url: 'https://res.cloudinary.com/dyseqqsmw/video/upload/v1562769718/Benya_sc3a9w.mp4',
              challenge_id: the_singing.id,
              user_id: ben.id,
              tag: "He didn't want to sing!")
Video.create!(remote_video_url: 'https://res.cloudinary.com/dyseqqsmw/video/upload/v1562769834/joe_chili_nxtcyr.mp4',
              challenge_id: the_chilisauce.id,
              user_id: marko.id,
              tag: "Chiliiiiiiiiii")


# Cloudinary::Uploader.upload("Test_video.mp4", :resource_type => :video)

puts "Finished generating videos"

puts "Done seeding!"
