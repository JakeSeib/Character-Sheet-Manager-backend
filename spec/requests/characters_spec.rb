# # frozen_string_literal: true
#
# require 'rails_helper'
#
# RSpec.describe 'characters API' do
#   def character_params
#     {
#       name: 'Rafnhildr',
#       high_concept: 'kingless with a very good name',
#       trouble: 'deceased'
#     }
#   end
#
#   def characters
#     Character.all
#   end
#
#   def character
#     Character.first
#   end
#
#   before(:all) do
#     Character.create!(character_params)
#   end
#
#   after(:all) do
#     Character.delete_all
#   end
#
#   describe 'GET /characters' do
#     it 'lists all characters' do
#       get '/characters'
#
#       expect(response).to be_success
#
#       characters_response = JSON.parse(response.body)
#       expect(characters_response.length).to eq(characters.count)
#       expect(characters_response.first['name']).to eq(character['name'])
#     end
#   end
#
#   # describe 'GET /characters/:id' do
#   #   it 'shows one character' do
#   #     # Perform the feature (make the request)
#   #     # get "/characters/4" # Hard-coding the ID
#   #     get "/characters/#{character.id}" # Use the character getter method to use the ID of the first character
#   #
#   #     expect(response).to be_successful
#   #
#   #     character_response = JSON.parse(response.body)
#   #
#   #     # Make sure the character has an ID
#   #     expect(character_response['id']).not_to be_nil
#   #
#   #     # Make sure the response character's title is the same as the `character`
#   #     # getter method's title (which will be the first character)
#   #     expect(character_response['title']).to eq(character['title'])
#   #
#   #     # Compare the response title with the character params title
#   #     # expect(character_response['title']).to eq(character_params['title'])
#   #   end
#   # end
#   #
#   # describe 'DELETE /characters/:id' do
#   #   it 'deletes an character' do
#   #     delete "/characters/#{character.id}"
#   #
#   #     expect(response).to be_successful
#   #     expect(response.body).to be_empty
#   #     expect(character).to be_nil
#   #   end
#   # end
#   #
#   # describe 'PATCH /characters/:id' do
#   #   def character_diff
#   #     { title: 'Two Stupid Tricks' }
#   #   end
#   #
#   #   it 'updates an character' do
#   #     patch "/characters/#{character.id}", params: { character: character_diff }
#   #
#   #     expect(response).to be_successful
#   #     expect(response.body).not_to be_nil
#   #     expect(character['title']).to eq(character_diff[:title])
#   #   end
#   # end
#   #
#   # describe 'POST /characters' do
#   #   def new_character
#   #     {
#   #       title: 'Some title',
#   #       content: 'Some content'
#   #     }
#   #   end
#   #
#   #   it 'creates an character' do
#   #     post '/characters', params: { character: new_character }
#   #
#   #     expect(response).to be_successful
#   #
#   #     character_response = JSON.parse(response.body)
#   #     expect(character_response['id']).not_to be_nil
#   #     expect(character_response['title']).to eq(new_character[:title])
#   #     expect(character_response['content']).to eq(new_character[:content])
#   #   end
#   # end
# end
