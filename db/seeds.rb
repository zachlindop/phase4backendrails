


User.create!([
    {
      name: "Link",
      fav_loz_game: "A Link to the Past",
      pic: "https://tse2.mm.bing.net/th?id=OIP.sWceuOGDwyHVnz4J_mZM3gHaMW&pid=Api&P=0&w=300&h=300"
    },
    {
      name: "Zelda",
      fav_loz_game: "Twilight Princess",
      pic: "https://tse1.mm.bing.net/th?id=OIP.OGZ0x3s1gINgMxVD-yJoVgHaEK&pid=Api&P=0&w=333&h=188"
    },
    {
      name: "Epona",
      fav_loz_game: "Ocarina of Time",
      pic: "https://tse4.mm.bing.net/th?id=OIP.sppaSmPTBWJyjMxo5yiJ2wHaJx&pid=Api&P=0&w=300&h=300"
    },
    {
      name: "Mipha",
      fav_loz_game: "Breath of the Wild",
      pic: "https://tse1.mm.bing.net/th?id=OIP.DXrsQVf5LVhFnNMseIyUEwHaHZ&pid=Api&P=0&w=300&h=300"
    },
    {
        name: "Hylia",
        fav_loz_game: "A Link to the Past",
        pic: "https://tse1.mm.bing.net/th?id=OIP.ipXLGYm1kCSK6ejQ7aqScAHaHH&pid=Api&P=0&w=170&h=164"
    },
    {
        name: "Gorko",
        fav_loz_game: "Skyward Sword",
        pic: "https://tse3.explicit.bing.net/th?id=OIP.dYh9kLC49JBgQe3-8G0Y-AAAAA&pid=Api&P=0&w=178&h=170"
    }
  ])

Game.create!([
  {
    name: "Legend of Zelda",
    image: "https://tse2.mm.bing.net/th?id=OIP.3e9GfJP7j0OSMysDV0ruXQHaEK&pid=Api&P=0&w=340&h=192",
    system: "NES",
    year: 1986,
    rating: "⭐️8.7",
    user_id: User.last.id
  },
  {
    name: "The Legend of Zelda: Link's Awakening",
    image: "https://tse3.mm.bing.net/th?id=OIP.9ppCVuceppLREjhZJ09CLwHaEK&pid=Api&P=0&w=301&h=170",
    system: "GB",
    year: 1993,
    rating: "⭐️8.6",
    user_id: User.first.id    
  },
  {
    name: "Link: The Faces of Evil",
    image: "https://tse1.mm.bing.net/th?id=OIP.--1K6wt6qyJKJu3RDzC4jAHaH7&pid=Api&P=0&w=300&h=300",
    system: "CD-i",
    year: 1993,
    rating: "⭐️2",
    user_id: User.first.id
  },
  {
    name: "The Legend of Zelda: Ocarina of Time",
    image: "https://tse2.mm.bing.net/th?id=OIP.PHSV9RGTZk8T6hO52YYaeQHaHa&pid=Api&P=0&w=300&h=300",
    system: "N64",
    year: 1998,
    rating: "⭐️9.6",
    user_id: User.first.id
  },
  {
    name: "The Legend of Zelda: Majora's Mask",
    image: "https://tse1.mm.bing.net/th?id=OIP.4EoUV8Gs-p3MOitfuEGqiQHaHa&pid=Api&P=0&w=300&h=300",
    system: "N64",
    year: 2000,
    rating: "⭐️9.1",
    user_id: User.first.id
  },
  {
    name:"The Legend of Zelda: Oracle of Ages",
    image: "https://tse2.mm.bing.net/th?id=OIP.qYYoOESuR04FAtDR3kBODAHaF7&pid=Api&P=0&w=187&h=151",
    system: "GBC",
    year: 2001,
    rating: "⭐️7.7",
    user_id: User.first.id
  },
  {
    name:"The Legend of Zelda: The Wind Waker",
    image: "https://tse2.mm.bing.net/th?id=OIP.EUZES_MxU4Pu0Uw-UETVvQHaFj&pid=Api&P=0&w=200&h=151",
    system: "GC",
    year: 2002,
    rating: "⭐️9",
    user_id: User.first.id
  },
  {
    name: "The Legend of Zelda: Twilight Princess",
    image: "https://tse1.mm.bing.net/th?id=OIP.ZrrBJ966pgjq7gfCpengegHaHa&pid=Api&P=0&w=300&h=300",
    system: "Wii",
    year: 2006,
    rating: "⭐️9",
    user_id: User.first.id
  },
  {
    name:"The Legend of Zelda: Phantom Hourglass",
    image: "https://tse1.mm.bing.net/th?id=OIP.YoemwforF0kb1iDLxAycLAHaHP&pid=Api&P=0&w=168&h=165",
    system: "DS",
    year: 2007,
    rating: "⭐️7.6",
    user_id: User.first.id
  },
  {
    name:"The Legend of Zelda: Spirit Tracks",
    image: "https://tse3.mm.bing.net/th?id=OIP.Egqf5MCDGLG_hkxpcb6ryQHaDt&pid=Api&P=0&w=345&h=173",
    system: "DS",
    year: 2009,
    rating: "⭐️7.2",
    user_id: User.first.id
  },
  {
    name:"The Legend of Zelda: Tri Force Heroes",
    image: "https://tse1.mm.bing.net/th?id=OIP.CtCUBKcEkdAhtvbgQL4L8gHaDt&pid=Api&P=0&w=300&h=150",
    system: "3DS",
    year: 2015,
    rating: "⭐️6.5",
    user_id: User.first.id
  },
  {
    name:"The Legend of Zelda: Breath of the Wild",
    image: "https://tse1.mm.bing.net/th?id=OIP.IieQ0Vj8VREwwkJ7zfA-YwHaEK&pid=Api&P=0&w=311&h=175",
    system: "Switch",
    year: 2017,
    rating: "⭐️9.4", 
    user_id: User.first.id
  }
])


# {
#     name: "Zelda II: The Adventure of Link",
#     image: "https://tse1.mm.bing.net/th?id=OIP.NqfAWWVswZjNu-RQi7pvXAHaDt&pid=Api&rs=1&c=1&qlt=95&w=226&h=113",
#     system: "NES",
#     year: 1987,
#     rating: "⭐️7.2",
#     user_id:
#   },
#   {
#     name: "The Legend of Zelda: A Link to the Past",
#     image: "https://tse1.mm.bing.net/th?id=OIP.-SQm_boEvswGzMB9D5WHzwHaJ8&pid=Api&P=0&w=300&h=300",
#     system: "SNES",
#     year: 1991,
#     rating: "⭐️9.3",
#     user_id:
    
#   },




#   {
#     name: "Zelda: The Wand of Gamelon",
#     image: "https://tse2.mm.bing.net/th?id=OIP.a87m6Rf0eGZf38pFvIXAsQHaHZ&pid=Api&P=0&w=300&h=300",
#     system: "CD-i",
#     year: 1993,
#     rating: "⭐️2.7", 
#     user_id:
    
#   },
#   {
#     name: "Zelda's Adventure",
#     image: "https://tse2.mm.bing.net/th?id=OIP.zAoXoSL9A3hJADPGYnzltAAAAA&pid=Api&P=0&w=203&h=153",
#     system: "CD-i",
#     year: 1995,
#     rating: "⭐️1.9",
#     user_id:
    
#   },


#   ,
#   {
#     name:"Cadence of Hyrule",
#     image: "https://tse4.mm.bing.net/th?id=OIP.-UM6_m1tsSu0Gyq1JsoPjQHaEK&pid=Api&P=0&w=332&h=187",
#     system: "Switch",
#     year: 2019,
#     rating:, 
#     user_id:
#   },
#   {
#     name:"Hyrule Warriors: Age of Calamity",
#     image: "https://tse3.mm.bing.net/th?id=OIP.acdFoqZFx7emHiHfXDABXgHaHa&pid=Api&P=0&w=300&h=300",
#     system: "Switch",
#     year: 2020,
#     rating: "⭐️7.7", 
#     user_id:
#   }

#   {
#     name:"The Legend of Zelda: Oracle of Seasons",
#     image: "https://tse2.mm.bing.net/th?id=OIP.eV4YtvH3HxEolkO9RHNSjgHaFj&pid=Api&P=0&w=219&h=165",
#     system: "GBC",
#     year: 2001,
#     rating: "⭐️7.7",
#     user_id:
#   },


#   {
#     name:"The Legend of Zelda: Four Swords Adventures",
#     image: "https://tse3.mm.bing.net/th?id=OIP.foz9C4nKwBkmCDZLw2qDLQHaDt&pid=Api&P=0&w=315&h=158",
#     system: "GC",
#     year: 2004,
#     rating: "⭐️7.1",
#     user_id:
#   },
#   {
#     name:"The Legend of Zelda: The Minish Cap",
#     image: "https://tse2.mm.bing.net/th?id=OIP.UsgDbBOrQoXeFTYT08MoQwHaEK&pid=Api&P=0&w=305&h=172",
#     system: "GBA",
#     year: 2004,
#     rating: "⭐️8.1",
#     user_id:
#   },


#   {
#     name:"The Legend of Zelda: A Link Between Worlds",
#     image: "https://tse2.mm.bing.net/th?id=OIP.ukiN3sI3SqiAHMI7cHBGKwHaEK&pid=Api&P=0&w=323&h=183",
#     system: "DS",
#     year: 2013,
#     rating: "⭐️8.7",
#     user_id:
#   },
#   {
#     name:"Hyrule Warriors",
#     image: "https://tse2.mm.bing.net/th?id=OIP.snVH3skSTs2F7zoMO5SLdAHaKd&pid=Api&P=0&w=300&h=300",
#     system: "WU",
#     year: 2014,
#     rating: "⭐️7.5",
#     user_id:
#   },

#   {
#     name:"The Legend of Zelda: Skyward Sword",
#     image: "https://tse2.mm.bing.net/th?id=OIP.yJfy2yt3GMqaSdA0fChZnAHaKe&pid=Api&P=0&w=300&h=300",
#     system: "Wii",
#     year: 2011,
#     rating: "⭐️8.2",
#     user_id:
#   },

#   {
#     name:"Link's Crossbow Training",
#     image: "https://tse2.mm.bing.net/th?id=OIP.MXSKSGtdzxLvKe_lBNR_pAHaKe&pid=Api&P=0&w=300&h=300",
#     system: "Wii",
#     year: 2007,
#     rating: "⭐️6.3",
#     user_id:
#   },