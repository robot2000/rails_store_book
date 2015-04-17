# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.delete_all
Product.create!(title: 'The Ruby language',
  description:
    %{<p>
        The Ruby programming language D.Flanagan Y.Matsumoto 2008
      </p>},
  image:   'book1.jpg',
  price: 90.00)
# . . .
Product.create!(title: 'Icebreaker',
  description:
    %{<p>
        Ledokol Viktor Suvorov 1999
      </p>},
  image: 'book2.jpg',
  price: 109.95)
# . . .

Product.create!(title: 'Airport',
  description:
    %{<p>
        Airport Arttur Hailey 1995
      </p>},
  image: 'book3.jpg',
  price: 80.00)

Product.create!(title: 'Das Kapital',
  description:
    %{<p>
        Das Kapital Karl Marks 2001
      </p>},
  image: 'book4.jpg',
  price: 130.00)

Product.create!(title: 'The Kobzar',
  description:
    %{<p>
        The Kobzar Taras Shevchenko 2010
      </p>},
  image: 'book5.jpg',
  price: 200.00)

Product.create!(title: 'Stalker',
  description:
    %{<p>
        Stalker Strugatskie brothers
      </p>},
  image: 'book6.jpg',
  price: 85.00)