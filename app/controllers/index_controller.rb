class IndexController < ApplicationController
  def index
    @component_name = 'IndexPage'
    @component_data = {
      #tree_roots: roots
    }
  end

  def packages
    @component_name = 'IntroPage'
    @component_data = {
      current: params[:current] || 'rails',
    }
  end

  def about
    @component_name = 'AboutPage'
    @component_data = {
      current: params[:current] || 'us',
    }
  end
end
