require 'mysql2'

class WelcomeController < ApplicationController
    def index
        @event_lists = Post.order(:update_date).limit(5)
        @categories = Post.group(:category).count
    end
   end