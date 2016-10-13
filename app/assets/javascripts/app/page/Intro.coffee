{ Menu, Row, Col } = antd

module.exports = IntroPage = React.createClass
  getInitialState: ->
    current: @props.current || 'rails'

  getDefaultProps: ->
    classes:
      rails: "Rails Web 开发"
      wechat_app: "微信小程序开发"
      react_jquery: "React JS & jQuery 前端开发"
      react_native: "React Native 移动应用开发"

  handleClick: (e)->
    @setState
      current: e.key

  render: ->
    <div className="main-wrapper">
      <div className='page-intro wrapper'>
        <Row>
          <Col xs={24} sm={24} md={6} lg={4}>
            <div className="menus">
              <Menu
                defaultSelectedKeys={[@state.current]}
                onClick={@handleClick}
                mode="inline"
                >
                {
                  for key, content of @props.classes
                    <Menu.Item key={key}>
                      <a href="javascript:;" >
                        {content}
                      </a>
                    </Menu.Item>
                }
              </Menu>
            </div>
          </Col>

          <Col xs={24} sm={24} md={18} lg={20}>
            <Content page={@state.current} />
          </Col>
        </Row>
      </div>
    </div>

Content = React.createClass
  render: ->
    console.log @props
    <div className="content">
      {
        switch @props.page
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
