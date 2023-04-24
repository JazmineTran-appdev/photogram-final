class UsersController < ApplicationController

  def index
    matching_users = User.all

    @list_of_users = matching_users.order({ :username => :asc })

    render({ :template => "users/index.html.erb" })
  end

  def show
    path_user = params.fetch("path_id")

    matching_user = User.where({ :username => path_user })

    @the_user = matching_user.first

    render({ :template => "users/show.html.erb" })
  end

  def show_liked
    path_user = params.fetch("path_id")

    matching_user = User.where({ :username => path_user })

    @the_user = matching_user.first

    render({ :template => "users/show_liked.html.erb"})
  end

  def show_feed
    path_user = params.fetch("path_id")

    matching_user = User.where({ :username => path_user })

    @the_user = matching_user.first

    render({ :template => "users/show_feed.html.erb"})
  end

  def show_discover
    path_user = params.fetch("path_id")

    matching_user = User.where({ :username => path_user })

    @the_user = matching_user.first

    render({ :template => "users/show_discover.html.erb"})
  end
end
