User.create(username: "nick", email_address: "nick@valentine.com", password: "diamond", password_confirmation: "diamond", role: "admin")
User.create(username: "sora", email_address: "sora@paopufruit.com", password: "kairi", password_confirmation: "kairi")
User.create(username: "sarah", email_address: "sarah@kerrigan.com", password: "raynor", password_confirmation: "raynor")

Game.create(name: "Fallout 4", year: 2015, summary: "Bethesda Game Studios, the award-winning creators of Fallout 3 and The Elder Scrolls V: Skyrim, welcome you to the world of Fallout 4 – their most ambitious game ever, and the next generation of open-world gaming.", cover: "//images.igdb.com/igdb/image/upload/t_thumb/g82nr1m9xqr8wnp0xdrn.png")
Game.create(name: "Kingdom Hearts", year: 2002, summary: "The premise of Kingdom Hearts is designed around traveling to a collection of levels that are both original designs, and based on various Disney stories, referred to in-game as \"Worlds\". The Worlds are populated by NPC's, based on relevant characters from the corresponding Disney story, for example, the World based on Disney's Alice in Wonderland features appearances by Alice, the White Rabbit, and the Queen of Hearts. Interacting with these characters forms part of gameplay, while combating the games enemies, the \"Heartless\" forms the other. \n\nSuccessful completion of a World is accomplished by defeating a key foe, which is either the primary villain from the Disney story, a unique Heartless of particular strength, or a combination thereof. Each world has a key foe which must be defeated, although there are many mini-bosses, side quests and treasures to be found that contribute to character progression within the game, and give bonuses for their completion in the form of weapons, items, and bonus scenes. \n\nThe game uses an experience based progression system, with experience gained by defeating foes. Experience gained rises in relation to the strength of the foe, and is consistent for each enemy over the course of the game. Levels are gained with experience, and provide increases to stat attributes in strength, defence, magic, hit points, magic points and ability points, with a new, predetermined ability unlocked approximately every four levels. Enemies also drop a combination of four types of reward upon death, green orbs that replenish HP, blue, translucent bubbles that replenish MP, yellow diamonds that contribute funds to the in-game currency \"Munny\", and tiny chests that when picked up, add a item to the players inventory based on the foe defeated. Such items include those used to restore HP and MP, items to aid party members or synthesis materials which can be used to create weapons and armor.", cover: "//images.igdb.com/igdb/image/upload/t_thumb/lxuvogkwn3lexvr7herw.png")
Game.create(name: "Starcraft", year: 1998, summary: "StarCraft is a strategic game set in a Galaxy far away on multiple planets. It's style and balance between the three antagonistic species it features is unique and appealed to millions.", cover: "//images.igdb.com/igdb/image/upload/t_thumb/lycxgr2b5xp8nii6gowb.png")

Genre.create(name: "RPG")
Genre.create(name: "RTS")
Genre.create(name: "FPS")

Platform.create(name: "PC")
Platform.create(name: "Xbox One")
Platform.create(name: "PlayStation 4")
Platform.create(name: "PlayStation 2")
Platform.create(name: "Mac")

Source.create(name: "Steam")
Source.create(name: "GOG")
Source.create(name: "Origin")
Source.create(name: "GameStop")
Source.create(name: "Blizzard")

Classification.create(game_id: 1, genre_id: 1)
Classification.create(game_id: 1, genre_id: 3)
Classification.create(game_id: 2, genre_id: 1)
Classification.create(game_id: 3, genre_id: 2)

Library.create(user_id: 1, game_id: 1, platform_id: 1, source_id: 1, status: "in progress", personal_rating: 7, hours_played: 50, notes: "Pretty good, but needs mods.")
Library.create(user_id: 2, game_id: 2, platform_id: 2, source_id: 4, status: "completed", personal_rating: 9, hours_played: 60, notes: "Great game!")
Library.create(user_id: 3, game_id: 3, platform_id: 3, source_id: 1, status: "in progress", personal_rating: 8, hours_played: 50, notes: "I need to move on...")
Library.create(user_id: 1, game_id: 2, platform_id: 4, source_id: 4, status: "in progress", personal_rating: 3, hours_played: 20, notes: "Too hard")
