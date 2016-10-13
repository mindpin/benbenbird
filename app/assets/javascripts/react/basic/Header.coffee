{ Alert, Menu, Row, Col } = antd

module.exports = Header = React.createClass
  handleClick: (e)->
    @setState
      current: e.key

  get_header_index: ->
    path = window.location.pathname
    for menu, index in @props.content_component.menus
      return index if path == menu.url
    0

  getInitialState: ->
    current: "header-#{@get_header_index()}"

  render: ->
    <div className='header clearfix'>
      <Row type="flex" justify="center">
        <Col xs={24} sm={7} md={6} lg={4}>
          <a href="/">
            <h1 id="site-name">笨笨鸟学院</h1>
          </a>
        </Col>
        <Col xs={0} sm={17} md={18} lg={20}>
          <div id="nav">
            <Menu
              defaultSelectedKeys={[@state.current]}
              onClick={@handleClick}
              mode="horizontal"
              >
              {
                for menu, index in @props.content_component.menus
                  <Menu.Item key="header-#{index}">
                    <a href={menu.url || "javascript:;"} >
                      {menu.content}
                    </a>
                  </Menu.Item>
              }
            </Menu>
          </div>
        </Col>
      </Row>
    </div>
