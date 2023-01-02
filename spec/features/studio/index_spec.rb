require 'rails_helper'

RSpec.describe 'The studios index page' do
# When I visit the studio index page,
# Then I see all of the studios including name and location,
# And under each studio I see all of the studio's movies
# including the movie's title, creation year, and genre
  it 'displays all the studios name and location' do
    @studio_1 = Studio.create!([{name: "Universal Studios"}, { location: "Hollywood"}])
    @studio_2 = Studio.create!([{name: "Pixar"}, {location: "Hollywood"}])
    visit '/studios'
    
    expect(page).to have_content("Universal Studios")
    expect(page).to have_content("Pixar")
    expect(page).to have_content("Hollywood")
  end

  it 'displays each studios movies' do
    @studio_1 = Studio.create!([{name: "Universal Studios", location: "Hollywood"}])
    @studio_2 = Studio.create!([{name: "Pixar"}, {location: "Hollywood"}])
    # binding.pry
    movie_1 = Movie.create([{ title: 'Star Wars' }, { creation_year: '1980' }, {genre: 'sci-fi'}, {studio_id: @studio_1[0].id}])
    visit '/studios'
    
    expect(page).to have_content("Star Wars")
    expect(page).to have_content("1980")
    expect(page).to have_content("sci-fi")
  end
end