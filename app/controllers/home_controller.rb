class HomeController < ApplicationController
  def index
    Search.delete_all
    ActiveRecord::Base.connection.execute("ALTER TABLE searches AUTO_INCREMENT = 1;")
  end
end
