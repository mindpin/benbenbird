{ Menu, Row, Col } = antd

module.exports = PackagesPage = React.createClass
  getDefaultProps: ->
    courses:
      packages: "课程包"

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
          when "packages"
            <div>
              <h1>课程包</h1>
            </div>
      }
    </div>