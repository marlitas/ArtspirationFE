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
          'artist': 'Big Pharma'
        }
      },
      {
        'id': '2',
        'type': 'liked_rated_art',
        'attributes': {
          'user_id': '1',
          'url': 'https://d32dm0rphc51dk.cloudfront.net/dTGcd0Xx0aEp_MDFdHIUIw/large.jpg',
          'title': 'Violin',
          'artist': 'Sparky'
        }
      },
      {
        'id': '3',
        'type': 'liked_rated_art',
        'attributes': {
          'user_id': '1',
          'url': 'https://d32dm0rphc51dk.cloudfront.net/E-k-uLoQADM8AjadsSKHrA/large.jpg',
          'title': 'Monroe',
          'artist': 'Luna'
        }
      }
    ]}.to_json
  end
  def self.mock_artwork
    {
      'data': {
        'id': '1',
        'type': 'artwork',
        'attributes': {
          'url': 'https://d32dm0rphc51dk.cloudfront.net/46PghnvIBjrN25-_kPPwQA/big_and_tall.jpg',
          'title': 'Campbells',
          'artist': 'Big Pharma'
        }
      }
    }.to_json
  end
end
