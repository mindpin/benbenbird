{ Menu, Row, Col } = antd

module.exports = PlanPage = React.createClass
  getDefaultProps: ->
    courses:
      rails: "Ruby on Rails"
      wechat_app: "Wechat Native App"
      react_jquery: "ReactJs & jQuery"
      react_native: "ReactNative"

  render: ->
    <div className="main-wrapper">
      <div className='page-intro wrapper'>
        <Row>
          <Col span={6}>
          <Nav {...@props}/>
          </Col>

          <Col span={18}>
            <Content {...@props} />
          </Col>
        </Row>
      </div>
    </div>

Nav = React.createClass
  render: ->
    <div className="menus">
      <Menu
        defaultSelectedKeys={[@props.current]}
        mode="inline"
        >
        {
          for key, content of @props.courses
            <Menu.Item key={key}>
              <MenuLink path={key}>{content}</MenuLink>
            </Menu.Item>
        }
      </Menu>
    </div>
    

MenuLink = React.createClass
  getInitialState: ->
    path = @props.path
    href: URI(location.href).search({current: path}).toString()

  render: ->
    <a href={@state.href} onClick={@click}>
      <span className='nav-text'>
        {@props.children}
      </span>
    </a>

  click: (evt)->
    evt.preventDefault()
    evt.stopPropagation()
    location.href = @state.href

Content = React.createClass
  render: ->
    <div className="content">
      {
        switch @props.current
          when "wechat_app"
            <div>
              <h1>微信小程序</h1>
            </div>
          when "react_jquery"
            <div>
              <h1>React JS & jQuery 前端开发</h1>
            </div>
          when "react_native"
            <div>
              <h1>React Native 移动应用开发</h1>
            </div>
          else
            <div>
              <h1>Rails Web 开发</h1>
            </div>
      }
    </div>
