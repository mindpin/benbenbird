class IndexController < ApplicationController
  def index
    @component_name = 'IndexPage'
    @component_data = {
      #tree_roots: roots
    }
  end
end

