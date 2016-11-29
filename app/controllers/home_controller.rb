class HomeController < ApplicationController
  def index
    Search.delete_all
    Pessoasearch.delete_all
    ActiveRecord::Base.connection.execute("ALTER TABLE searches AUTO_INCREMENT = 1;")
    ActiveRecord::Base.connection.execute("ALTER TABLE pessoasearches AUTO_INCREMENT = 1;")
  end
end
