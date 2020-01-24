class DinnersController < ApplicationController

  # GET: /dinners
  get "/dinners" do
    erb :"/dinners/index.html"
  end

  # GET: /dinners/new
  get "/dinners/new" do
    @users_dinner = User.all
    @meals_dinner = Meal.all
    erb :"/dinners/new.html"
  end

  # POST: /dinners
  post "/dinners" do
    Dinner.create(params)
    redirect "/dinners"
  end

  # GET: /dinners/5
  get "/dinners/:id" do
    erb :"/dinners/show.html"
  end

  # GET: /dinners/5/edit
  get "/dinners/:id/edit" do
    erb :"/dinners/edit.html"
  end

  # PATCH: /dinners/5
  patch "/dinners/:id" do
    redirect "/dinners/:id"
  end

  # DELETE: /dinners/5/delete
  delete "/dinners/:id/delete" do
    redirect "/dinners"
  end
end
