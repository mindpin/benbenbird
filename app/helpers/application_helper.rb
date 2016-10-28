module ApplicationHelper
  def menus_component
    YAML.load_file "config/menus.yml"
  end

  def footer_component
    YAML.load_file "config/footer.yml"
  end

  def pack_icons
    ["sementic-ui.png", "code.png", "css3.png", "json.png", "ruby.png", "drag-drop.png", "yarn.png", "fontawesome2.png", "mockup.png", "programming.png", "email.png", "http.png", "rails.png", "angular.png", "domain.png", "codepen.png", "d3js.png", "canvas.png", "map-icon.png", "git.png", "redis.png", "sidekiq.png", "nodejs.png", "xunfei.png", "alipay.png", "jekyll.png", "cucumber.png", "markdown.png", "image.png", "elastic.png", "npm.png", "react.png", "sublime.png", "crontab.png", "browserify.png", "github.png", "websocket.png", "mindmap.png", "rspec.png", "html5.png", "antd.png", "haml.png", "coffeescript.png", "weixin.png", "qrcode.png", "flow-chart.png", "weibo.png", "auth.png", "regexp.png", "chrome.png", "scss.png", "linux.png", "mysql.png", "code-format.png", "bootstrap.png", "net.png", "refactoring.png", "web-game.png", "heroku.png", "api.png", "qiniu.png", "hexo.png", "jquery.png", "mongodb.png", "map.png", "search.png", "nginx.png"]
  end
end
