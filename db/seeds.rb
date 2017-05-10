FavouriteShow.delete_all
User.delete_all
Show.delete_all

s1 = Show.create(
  {
    title: "The Great British Bake Off",
    series: 7,
    description: "Master bakers Mary & Paul and the incomparable presenting duo of Mel & Sue are back for another interesting series about baking cakes.",
    image: "placeholder.jpg",
    programmeID: "b013pqnm" 
  }
)

s2 = Show.create(
  {
    title: "Battlestar Galactica",
    series: 3,
    description: "So many toasters",
    image: "placeholder.jpg",
    programmeID: "galactica_actual" 
  }
)

s3 = Show.create(
  {
    title: "The Walking Dead",
    series: 2,
    description: "Nothing happens for HOURS",
    image: "placeholder.jpg",
    programmeID: "moreLikezzzZombies" 
  }
)

u1 = User.create({email: 'ross@email.com', password: 'password', password_confirmation: 'password'})
u2 = User.create({email: 'david@email.com', password: 'password1', password_confirmation: 'password1'})

FavouriteShow.create({user_id: u1[:id], show_id: s2[:id] })
FavouriteShow.create({user_id: u2[:id], show_id: s2[:id] })
FavouriteShow.create({user_id: u2[:id], show_id: s3[:id] })