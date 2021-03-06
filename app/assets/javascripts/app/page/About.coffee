{ Menu, Row, Col } = antd

module.exports = AboutPage = React.createClass
  getDefaultProps: ->
    courses:
      us: "关于我们"
      teaching_philosophy: "教学理念"
      contact: "联系方式"
      members: "成员简介"

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
          when "teaching_philosophy"
            <div>
              <h1>教学理念</h1>
            </div>
          when "contact"
            <div>
              <h1>联系方式</h1>
            </div>
          when "members"
            <div>
              <h1>成员简介</h1>
            </div>
          else
            <div>
              <h1>关于我们</h1>
            </div>
      }
    </div>