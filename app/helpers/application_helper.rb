module ApplicationHelper
  def menus_component
    data = YAML.load_file "config/menus.yml"
    data || {menus: []}
  end

  def footer_component
    data = YAML.load_file "config/footer.yml"
    begin
      data["footer"]["links"]
    rescue
      []
    end
  end
end
