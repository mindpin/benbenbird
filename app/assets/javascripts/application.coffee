# utils
window.ClassName = require 'utils/ClassName'
window.randstr = require 'utils/randstr'

# http://fontawesome.io/icons/
window.FaIcon = require 'utils/FaIcon'

format_date = require 'utils/format_date'
Date.prototype.format = (str)-> format_date(this, str)


# # layouts
window.YieldComponent = require 'react/layouts/YieldComponent'
window.AppLayout = require 'react/layouts/AppLayout'

# basic
window.Header = require 'react/basic/Header'
window.Footer = require 'react/basic/Footer'

# components
window.IndexPage = require 'app/page/Index'
window.IntroPage = require 'app/page/Intro'
window.AboutPage = require 'app/page/About'
#window.OrganizationsTreesPage = require 'app/OrganizationsTreesPage'
#window.OrganizationTreePage = require 'app/OrganizationTreePage'
#window.OrganizationNodeShow = require 'app/OrganizationNodeShow'

#window.ChatPageOrganizationTree = require 'app/chat/ChatPageOrganizationTree'
#window.ChatPageChatRoom = require 'app/chat/ChatPageChatRoom'
#window.ChatPageCurrentUser = require 'app/chat/ChatPageCurrentUser'
#window.ChatPage = require 'app/chat/ChatPage'

