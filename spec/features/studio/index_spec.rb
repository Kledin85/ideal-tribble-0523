require 'rails_helper'

RSpec.describe 'The studios index page' do
# When I visit the studio index page,
# Then I see all of the studios including name and location,
# And under each studio I see all of the studio's movies
# including the movie's title, creation year, and genre
  it 'displays all the studios name and location' do
    @studio_1 = Studio.create!("Universal Studios", "Hollywood")
    @studio_2 = Studio.create!("Pixar", "Hollywood")
    visit '/studios'
    
    expect(page).to have_content("Universal studios")
    expect(page).to have_content("Pixar")
  end
end