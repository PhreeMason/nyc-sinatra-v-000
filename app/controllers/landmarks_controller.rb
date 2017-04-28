class LandmarksController < ApplicationController

  get '/landmarks/new' do
    erb :'/landmarks/new'
  end

  post '/landmarks/create' do
    @landmark = Landmark.create(params[:landmark])
    redirect to 'landmarks/:#{@landmark.id}'
  end

  get 'landmarks/:id' do
    @landmark = params[:id]
    erb :'/landmarks/show'
  end

  get '/landmarks' do
    @landmarks = Landmark.all 
    erb :'/landmarks/index'
  end

end
