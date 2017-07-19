class JuicesController < ApplicationController

#Give me all the juices
# SELECT * FTOM juices
  get '/juices' do
    @juices = Juice.all
    erb :'juices/index.html'
  end

  get '/juices/new' do
    erb :'juices/new.html'
  end

#show me a form to edit the juice @ ID
#juice.find(params[:id])
#display the name and size
#
  get 'juices/:id/edit' do
    @juice = Juice.find(params[:id]) #instance variable so we can pass it to the juice
    erb :'juices/edit.html'
  end

#now we want to update this particular juice
  patch 'juices/:id' do
    
  end


  post '/juices' do
    juice = Juice.create(params)
    redirect '/juices'
    #after we have created, either show the created juice or show all the juices with the new addition
  end



end

  #to recap - juices/new
  # then we have a form that tells us where to go and the method
  # once we submit, it hits the post at juices to create a juice and then redirect to /juices to
  # show the update. why redirect? so we don't have to get all the juices and then render the index
  # because we don't want to have to call on the instance variable again
