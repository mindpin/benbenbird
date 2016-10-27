#= require libs

# utils
require 'utils/_index'

# layouts
require 'layouts/_index'

# app components
window.AppComponents = {}
register = (component, displayName=null)->
  component.displayName = displayName || component.displayName
  window.AppComponents[component.displayName] = component

# basic
window.Footer = require 'react/basic/Footer'

# components
register require 'app/page/Index'
register require 'app/page/Intro'
register require 'app/page/About'