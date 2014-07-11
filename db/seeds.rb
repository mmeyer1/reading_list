
Book.destroy_all
Genre.destroy_all

fiction = Genre.create!(name: 'Fiction')
non_fiction = Genre.create!(name: 'Non-Fiction')
history = Genre.create!(name: 'History')

Book.create!([{ title: 'Clash of Empires',
  author: 'Dennis Showalter',
  descr: "The classic history of the Tannenburg campaign, a case study in good military history",
  amazon_id: '1574887815',
  rating: 5,
  finished_on: 10.months.ago,
  genre: history }])
Book.create!([{ title: 'Codex: Tyranids',
    author: 'Robert Cruddace',
    descr: "The gospel of Genestealers",
    amazon_id: '1841540137',
    rating: 3,
    finished_on: 2.months.ago,
    genre: fiction}])
