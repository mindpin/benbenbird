require "yaml"

module ApplicationHelper
  def menus_component
    data = YAML.load_file "config/menus.yml"
    data || {menus: []}
  end
end
