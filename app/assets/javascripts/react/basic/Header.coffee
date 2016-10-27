{ Alert, Menu, Row, Col, Icon } = antd

module.exports = Header = React.createClass
  render: ->
    <div className='header'>
      <div className='header-inner'>
        <Home />
        <Nav {...@props} />
      </div>
    </div>

Home = React.createClass
  render: ->
    <div className='home'>
      <a href="/">
        <h1><Icon type='home' /> 笨笨鸟学院</h1>
      </a>
    </div>

Nav = React.createClass
  getInitialState: ->
    path = new URI(location.href).path()
    current_path: path

  render: ->
    <div className='nav'>
      <Menu
        defaultSelectedKeys={[@state.current_path]}
        mode="horizontal"
      >
      {
        @props.menus.map (menu)->
          <Menu.Item key={menu.path}>
            <MenuLink menu={menu}>{menu.content}</MenuLink>
          </Menu.Item>
      }
      </Menu>
    </div>

MenuLink = React.createClass
  render: ->
    { path, icon } = @props.menu

    <a href={path} onClick={@click}>
      <span className='nav-text'>
        <Icon type={icon} /> {@props.children}
      </span>
    </a>

  click: (evt)->
    evt.preventDefault()
    evt.stopPropagation()
    Turbolinks.visit @props.menu.path