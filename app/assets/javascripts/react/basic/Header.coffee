{ Alert, Menu, Row, Col } = antd

module.exports = Header = React.createClass
  getInitialState: ->
    current: 'header-0'

  handleClick: (e)->
    @setState
      current: e.key

  render: ->
    <div className='header clearfix'>
      <Row type="flex" justify="center">
        <Col xs={24} sm={7} md={6} lg={4}>
          <a href="/" id="logo">
            笨笨鸟
          </a>
        </Col>
        <Col xs={0} sm={17} md={18} lg={20}>
          <Menu
            defaultSelectedKeys={[@state.current]}
            onClick={@handleClick}
            mode="horizontal"
            >
            <Menu.Item key="header-0">
              <a href="javascript:;">首页</a>
            </Menu.Item>
            <Menu.Item key="header-1">
              <a href="javascript:;">测试</a>
            </Menu.Item>
          </Menu>
        </Col>
      </Row>
    </div>
