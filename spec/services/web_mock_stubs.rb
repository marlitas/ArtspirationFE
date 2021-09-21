module WebmockStubs
  def self.mock_user
    {
      'data': {
        'id': '1',
        'type': 'user',
        'attributes': {
          'name': 'Big Chungus',
          'email': 'bigchungus@gmail.com',
          'token': 'iahshd2ihi2hd'
        }
      }
    }.to_json
  end

  def self.mock_artworks
    {
      'data': [{
        'id': '1',
        'type': 'liked_rated_art',
        'attributes': {
          'user_id': '1',
          'url': 'https://d32dm0rphc51dk.cloudfront.net/46PghnvIBjrN25-_kPPwQA/big_and_tall.jpg',
          'title': 'Campbells',
          'artist': 'Big Pharma',
          'artist_url': 'https://en.wikipedia.org/wiki/Vincent_van_Gogh',
          'liked': 'true'
        }
      },
      {
        'id': '2',
        'type': 'liked_rated_art',
        'attributes': {
          'user_id': '1',
          'url': 'https://d32dm0rphc51dk.cloudfront.net/dTGcd0Xx0aEp_MDFdHIUIw/large.jpg',
          'title': 'Violin',
          'artist': 'Sparky',
          'artist_url': 'https://en.wikipedia.org/wiki/Vincent_van_Gogh',
          'liked': 'true'
        }
      },
      {
        'id': '3',
        'type': 'liked_rated_art',
        'attributes': {
          'user_id': '1',
          'url': 'https://d32dm0rphc51dk.cloudfront.net/E-k-uLoQADM8AjadsSKHrA/large.jpg',
          'title': 'Monroe',
          'artist': 'Luna',
          'artist_url': 'https://en.wikipedia.org/wiki/Vincent_van_Gogh',
          'liked': 'true'
        }
      }
    ]}.to_json
  end
  def self.mock_artwork_liked
    {
      'data': {
        'id': '1',
        'type': 'artwork',
        'attributes': {
          'url': 'https://d32dm0rphc51dk.cloudfront.net/46PghnvIBjrN25-_kPPwQA/big_and_tall.jpg',
          'title': 'Campbells',
          'artist': 'Big Pharma',
          'artist_url': 'https://en.wikipedia.org/wiki/Vincent_van_Gogh',
          'liked': 'true'
        }
      }
    }.to_json
  end

  def self.mock_artwork
    {
      'data': {
        'id': '4',
        'type': 'user_recommendations',
        'attributes': {
          'user_id': '1',
          'url': 'https://d7hftxdivxxvm.cloudfront.net/?resize_to=fit&width=604&height=800&quality=80&src=https%3A%2F%2Fd32dm0rphc51dk.cloudfront.net%2Fbgm-SBom-a9cAMeS8-r4_A%2Fnormalized.jpg',
          'title': 'Ranger Merah',
          'artist': 'Roby Dwi Antono'
          }
        }
      }.to_json
  end

  def self.mock_artwork_not_liked
    {
      'data': {
        'id': '1',
        'type': 'artwork',
        'attributes': {
          'url': 'https://d32dm0rphc51dk.cloudfront.net/46PghnvIBjrN25-_kPPwQA/big_and_tall.jpg',
          'title': 'Campbells',
          'artist': 'Big Pharma',
          'artist_url': 'https://en.wikipedia.org/wiki/Vincent_van_Gogh',
          'liked': 'false'
        }
      }
    }.to_json
  end

  def self.mock_artwork_unrated
    {
      'data': {
        'id': '1',
        'type': 'artwork',
        'attributes': {
          'url': 'https://d32dm0rphc51dk.cloudfront.net/46PghnvIBjrN25-_kPPwQA/big_and_tall.jpg',
          'title': 'Campbells',
          'artist': 'Big Pharma',
          'artist_url': 'https://en.wikipedia.org/wiki/Vincent_van_Gogh',
          'liked': 'unrated'
        }
      }
    }.to_json
  end
  def self.mock_artwork_recommendations
    {
      'data': {
        'id': '4',
        'type': 'user_recommendations',
        'attributes': {
          'user_id': '1',
          'url': 'https://d7hftxdivxxvm.cloudfront.net/?resize_to=fit&width=604&height=800&quality=80&src=https%3A%2F%2Fd32dm0rphc51dk.cloudfront.net%2Fbgm-SBom-a9cAMeS8-r4_A%2Fnormalized.jpg',
          'title': 'Ranger Merah',
          'artist': 'Roby Dwi Antono'
          }
        }
      }.to_json
  end

  def self.mock_all_art
    {
      'data': [{
        'id': '1',
        'type': 'liked_rated_art',
        'attributes': {
          'user_id': '1',
          'url': 'https://d32dm0rphc51dk.cloudfront.net/46PghnvIBjrN25-_kPPwQA/big_and_tall.jpg',
          'title': 'Campbells',
          'artist': 'Big Pharma',
          'artist_url': 'https://en.wikipedia.org/wiki/Vincent_van_Gogh'
        }
      },
      {
        'id': '2',
        'type': 'liked_rated_art',
        'attributes': {
          'user_id': '1',
          'url': 'https://d32dm0rphc51dk.cloudfront.net/dTGcd0Xx0aEp_MDFdHIUIw/large.jpg',
          'title': 'Violin',
          'artist': 'Sparky',
          'artist_url': 'https://en.wikipedia.org/wiki/Vincent_van_Gogh'
        }
      },
      {
        'id': '3',
        'type': 'liked_rated_art',
        'attributes': {
          'user_id': '1',
          'url': 'https://d32dm0rphc51dk.cloudfront.net/E-k-uLoQADM8AjadsSKHrA/large.jpg',
          'title': 'Monroe',
          'artist': 'Luna',
          'artist_url': 'https://en.wikipedia.org/wiki/Vincent_van_Gogh'
        }
      },
      {
        'id': '4',
        'type': 'user_recommendations',
        'attributes': {
          'user_id': '1',
          'url': 'https://d7hftxdivxxvm.cloudfront.net/?resize_to=fit&width=604&height=800&quality=80&src=https%3A%2F%2Fd32dm0rphc51dk.cloudfront.net%2Fbgm-SBom-a9cAMeS8-r4_A%2Fnormalized.jpg',
          'title': 'Ranger Merah',
          'artist': 'Roby Dwi Antono'
        }
      }
    ]}.to_json
  end

end
