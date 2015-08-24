require 'rails_helper'

describe 'db:seed', type: :rake do
  it { is_expected.to depend_on(:environment) }

  it 'populates the database' do
    person_count = Person.count
    movie_count  = Movie.count

    subject.execute

    expect(Person.count - person_count).to eq(131)
    expect(Movie.count  - movie_count ).to eq(38)


  end

end