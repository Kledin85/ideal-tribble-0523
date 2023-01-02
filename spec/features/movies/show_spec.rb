require 'rails_helper'

RSpec.describe 'the movies show page' do
#   As a user,
# When I visit a movie's show page.
# I see the movie's title, creation year, and genre,
# and a list of all its actors from youngest to oldest.
# And I see the average age of all of the movie's actors
  it 'shows a movies title,creation year, and genre' do

    movie_1 = Movie.create([{ title: 'Star Wars' }, { creation_year: '1980' }, {genre: 'sci-fi'}])
    visit "movies/#{movie_1[0].id}"

    expect(page).to have_content('Star Wars')
    expect(page).to have_content('1980')
    expect(page).to have_content('sci-fi')
  end
end