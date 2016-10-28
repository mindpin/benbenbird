Header = require 'react/basic/Header'

module.exports = AppLayout = React.createClass
  render: ->
    console.log @props

    <div className='app-layout'>
      <Header menus={@props.menus} />
      <YieldComponent component={window.content_component} />
      <Footer links={@props.footer_links} />
    </div>