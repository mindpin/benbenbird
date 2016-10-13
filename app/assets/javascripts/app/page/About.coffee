{ Menu, Row, Col } = antd

module.exports = AboutPage = React.createClass
  getInitialState: ->
    current: @props.current || 'rails'

  getDefaultProps: ->
    classes:
      us: "关于我们"
      teaching_philosophy: "教学理念"
      contact: "联系方式"
      members: "成员简介"

  handleClick: (e)->
    @setState
      current: e.key

  render: ->
    <div className='page-about main-wrapper'>
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

Content = React.createClass
  render: ->
    <div className="content">
      {
        switch @props.page
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
