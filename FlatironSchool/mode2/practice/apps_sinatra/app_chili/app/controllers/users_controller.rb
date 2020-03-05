require 'pry'

class UsersController < ApplicationController

  # GET: /users
  get "/users" do
    @users = User.all
    erb :"/users/index.html"
  end

  # GET: /users/new
  get "/users/new" do
    erb :"/users/new.html"
  end

  # POST: /users
  post "/users" do
    User.create(params)
    redirect "/users"
  end

  # GET: /users/5
  get "/users/:id" do
    @user = User.find(params[:id])
    erb :"/users/show.html"
  end

  # GET: /users/5/edit
  get "/users/:id/edit" do
    @user = User.find(params[:id])
    erb :"/users/edit.html"
  end

  # PATCH: /users/5
  patch "/users/:id" do
    @user = User.find(params[:id])
    @user.update(params[:user])

    redirect to "/users/#{@user.id}"
  end

  get "/users/:id/have_dinner" do
    @user = User.find(params[:id])
    @meals = Meal.all
    erb :"/users/have_dinner.html"
  end

  post "/users/:id" do
    @user = User.find(params[:id])

    Dinner.create(user_id: params[:user_id], meal_id: params[:meal_id])
    redirect to "/users/#{@user.id}"
  end


  # DELETE: /users/5/delete
  delete "/users/:id/delete" do
    @user = User.find(params[:id])
    @user.destroy
    redirect "/users"
  end

end
