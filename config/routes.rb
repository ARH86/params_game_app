Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
namespace :api do
    get "/name_game_url" => 'game#name_game_action'
    get "/first_letter_url" => 'game#first_letter'
    get "/guessing_url/:my_number" => 'game#segment_guess'
  end
end