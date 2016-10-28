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
    imgs = [
      'http://i.teamkn.com/i/b8Qw30yd.png'
      'http://i.teamkn.com/i/Z2k6kIHM.png'
      'http://i.teamkn.com/i/fB0NTZHR.png'
      'http://i.teamkn.com/i/kSSP9eSV.png'
      'http://i.teamkn.com/i/mX2QmDKv.png'
      'http://i.teamkn.com/i/RiQNkCwv.png'
    ]

    { Icon } = antd

    <div className="content">
      {
        switch @props.current
          when "packages"
            <div>
              <h1>课程包</h1>
              <p style={marginBottom: '1rem'}>
                我们准备了许多种适合初学者的课程包，在每个课程包的学习过程中，我们可以提供以下帮助：
              </p>
              <ul style={marginBottom: '1.5rem'}>
                <li><Icon type='arrow-right' /> 提供全部的必要学习资料</li>
                <li><Icon type='arrow-right' /> 帮助搭建开发实验环境</li>
                <li><Icon type='arrow-right' /> 设计实践作业</li>
                <li><Icon type='arrow-right' /> 提供邮件，语音，聊天答疑</li>
                <li><Icon type='arrow-right' /> 进行 Code Review</li>
              </ul>
              {
                imgs.map (i, idx)->
                  <img src={i} key={idx} style={maxWidth: '100%'} />
              }
            </div>
      }
    </div>