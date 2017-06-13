require 'grape'
require "./git_presenter"

class GrapeController < Grape::API
  format :json

  get :hello do
    { hello: 'world test' }
  end

  post "postando" do
    { result: GitInterfaceAgressive.new.checkout(params[:branch]) }
     status :not_found
  end

  get :nome do
    present("Fred", with: ::GitPresenter)
  end

end
