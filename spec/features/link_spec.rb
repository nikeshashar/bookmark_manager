feature 'List of links' do

  scenario 'displays a list of links' do
    Link.create(name: 'datamapper.org', url: 'https://datamapper.org/')
    visit('/')
    expect(page.status_code).to eq 200
    within 'ul#links' do
      expect(page).to have_content 'datamapper.org'
    end
  end

end
