class IndexController < ApplicationController
  def index
    @component_name = 'IndexPage'
    @component_data = {
      #tree_roots: roots
    }
  end

  def intro
    @component_name = 'IntroPage'
    @component_data = {
      current: params[:current] || 'rails',
    }
  end
end
