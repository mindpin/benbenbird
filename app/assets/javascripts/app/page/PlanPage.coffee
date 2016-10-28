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
    { Icon } = antd

    <div className="content">
      {
        switch @props.current
          when "wechat_app"
            <div>
              <h1 style={marginBottom: '2rem'}>开发一个实用的微信小程序</h1>
              <p style={marginBottom: '1rem'}>我们想让学习这个计划的人完成以下的小目标：</p>
              <ul style={marginBottom: '1.5rem'}>
                <li><Icon type='arrow-right' /> 了解微信生态圈</li>
                <li><Icon type='arrow-right' /> 深入学习 javascript</li>
                <li><Icon type='arrow-right' /> 了解什么是应用平台</li>
                <li><Icon type='arrow-right' /> 掌握微信小程序的开发工具</li>
                <li><Icon type='arrow-right' /> 学会怎么样把想法转化成实际的应用</li>
                <li><Icon type='arrow-right' /> 学会大家一起合作</li>
                <li><Icon type='arrow-right' /> 制作出一个微信小程序</li>
                <li style={fontWeight: 'bold'}><Icon type='arrow-right' /> 把程序发布出来给别人使用</li>
              </ul>
              <p style={marginBottom: '1rem'}>为此，我们会按以下方式安排这个计划：</p>

              <ul style={marginBottom: '1.5rem'}>
                <li style={fontWeight: 'bold', marginBottom: '0.3rem'}><Icon type='plus' /> 第一阶段：打基础</li>
                <ul style={marginLeft: '1.5rem', marginBottom: '1.5rem'}>
                  <li><Icon type='arrow-right' /> 准备环境</li>
                  <li><Icon type='arrow-right' /> 看演示学习 TODO 应用</li>
                  <li><Icon type='arrow-right' /> 学习工程组织结构</li>
                </ul>
                <li style={fontWeight: 'bold', marginBottom: '0.3rem'}><Icon type='plus' /> 第二阶段：尝试开发</li>
                <ul style={marginLeft: '1.5rem', marginBottom: '1.5rem'}>
                  <li><Icon type='arrow-right' /> 学习程序配置</li>
                  <li><Icon type='arrow-right' /> 学习布局和样式</li>
                  <li><Icon type='arrow-right' /> 学习基础组件</li>
                  <li><Icon type='arrow-right' /> 学习高级组件</li>
                  <li><Icon type='arrow-right' /> 学习音频视频 API</li>
                  <li><Icon type='arrow-right' /> 学习位置和重力感应 API</li>
                  <li><Icon type='arrow-right' /> 学习缓存和网络 API</li>
                  <li><Icon type='arrow-right' /> 学习支付 API</li>
                </ul>
                <li style={fontWeight: 'bold', marginBottom: '0.3rem'}><Icon type='plus' /> 第三阶段：团队协作</li>
                <ul style={marginLeft: '1.5rem', marginBottom: '1.5rem'}>
                  <li><Icon type='arrow-right' /> 学习开发规范</li>
                  <li><Icon type='arrow-right' /> 学习文档规范</li>
                  <li><Icon type='arrow-right' /> 学习管理代码</li>
                  <li><Icon type='arrow-right' /> 学习分配任务和提交成果</li>
                  <li><Icon type='arrow-right' /> 学习迭代开发</li>
                </ul>
                <li style={fontWeight: 'bold', marginBottom: '0.3rem'}><Icon type='plus' /> 第四阶段：完成产品</li>
                <ul style={marginLeft: '1.5rem', marginBottom: '1.5rem'}>
                  <li><Icon type='arrow-right' /> 学习查错方法</li>
                  <li><Icon type='arrow-right' /> 学习测试方法</li>
                  <li><Icon type='arrow-right' /> 学习重构方法</li>
                  <li><Icon type='arrow-right' /> 学习部署方法</li>
                </ul>
              </ul>
            </div>
          when "react_jquery"
            <div>
              <h1 style={marginBottom: '2rem'}>把网站做得更酷，更漂亮，更易用</h1>
              <p style={marginBottom: '1rem'}>我们想让学习这个计划的人完成以下的小目标：</p>
              <ul style={marginBottom: '1.5rem'}>
                <li><Icon type='arrow-right' /> 了解前端开发的各种常识</li>
                <li><Icon type='arrow-right' /> 深入学习 javascript</li>
                <li><Icon type='arrow-right' /> 了解静态和动态网站</li>
                <li><Icon type='arrow-right' /> 学会开发复杂的界面</li>
                <li><Icon type='arrow-right' /> 学会让界面运动起来</li>
                <li><Icon type='arrow-right' /> 学会设计和实现用户操作</li>
                <li><Icon type='arrow-right' /> 初步学会数据可视化开发</li>
                <li><Icon type='arrow-right' /> 制作出一个小型网页游戏</li>
                <li style={fontWeight: 'bold'}><Icon type='arrow-right' /> 把游戏发布出来给别人玩</li>
              </ul>
              <p style={marginBottom: '1rem'}>为此，我们会按以下方式安排这个计划：</p>

              <ul style={marginBottom: '1.5rem'}>
                <li style={fontWeight: 'bold', marginBottom: '0.3rem'}><Icon type='plus' /> 第一阶段：打基础</li>
                <ul style={marginLeft: '1.5rem', marginBottom: '1.5rem'}>
                  <li><Icon type='arrow-right' /> 准备环境</li>
                  <li><Icon type='arrow-right' /> 看演示学习日历应用</li>
                  <li><Icon type='arrow-right' /> 尝试操作 DOM</li>
                  <li><Icon type='arrow-right' /> 尝试使用 JSX</li>
                </ul>
                <li style={fontWeight: 'bold', marginBottom: '0.3rem'}><Icon type='plus' /> 第二阶段：尝试开发</li>
                <ul style={marginLeft: '1.5rem', marginBottom: '1.5rem'}>
                  <li><Icon type='arrow-right' /> 学习层层封装组件</li>
                  <li><Icon type='arrow-right' /> 学习组织和转换数据</li>
                  <li><Icon type='arrow-right' /> 学习处理网络请求</li>
                  <li><Icon type='arrow-right' /> 学习使用 ant.design 库</li>
                  <li><Icon type='arrow-right' /> 学习实现各种特效</li>
                  <li><Icon type='arrow-right' /> 学习在 codepen.io 做实验</li>
                  <li><Icon type='arrow-right' /> 学习处理交互事件</li>
                  <li><Icon type='arrow-right' /> 学习动效处理</li>
                  <li><Icon type='arrow-right' /> 学习小游戏场景开发</li>
                  <li><Icon type='arrow-right' /> 学习小游戏角色开发</li>
                  <li><Icon type='arrow-right' /> 学习小游戏行为开发</li>
                </ul>
                <li style={fontWeight: 'bold', marginBottom: '0.3rem'}><Icon type='plus' /> 第三阶段：团队协作</li>
                <ul style={marginLeft: '1.5rem', marginBottom: '1.5rem'}>
                  <li><Icon type='arrow-right' /> 学习开发规范</li>
                  <li><Icon type='arrow-right' /> 学习文档规范</li>
                  <li><Icon type='arrow-right' /> 学习管理代码</li>
                  <li><Icon type='arrow-right' /> 学习分配任务和提交成果</li>
                  <li><Icon type='arrow-right' /> 学习迭代开发</li>
                </ul>
                <li style={fontWeight: 'bold', marginBottom: '0.3rem'}><Icon type='plus' /> 第四阶段：完成产品</li>
                <ul style={marginLeft: '1.5rem', marginBottom: '1.5rem'}>
                  <li><Icon type='arrow-right' /> 学习查错方法</li>
                  <li><Icon type='arrow-right' /> 学习测试方法</li>
                  <li><Icon type='arrow-right' /> 学习重构方法</li>
                  <li><Icon type='arrow-right' /> 学习部署方法</li>
                </ul>
              </ul>
            </div>
          when "react_native"
            <div>
              <h1 style={marginBottom: '2rem'}>学习一次，就可以在两种手机上开发应用</h1>
              <p style={marginBottom: '1rem'}>我们想让学习这个计划的人完成以下的小目标：</p>
              <ul style={marginBottom: '1.5rem'}>
                <li><Icon type='arrow-right' /> 了解手机应用的各种常识</li>
                <li><Icon type='arrow-right' /> 深入学习 node.js</li>
                <li><Icon type='arrow-right' /> 了解 android 和 ios 生态圈</li>
                <li><Icon type='arrow-right' /> 了解应用发布过程</li>
                <li><Icon type='arrow-right' /> 了解数据服务</li>
                <li><Icon type='arrow-right' /> 制作出一个双平台应用</li>
                <li style={fontWeight: 'bold'}><Icon type='arrow-right' /> 把应用发布出来给别人使用</li>
              </ul>
              <p style={marginBottom: '1rem'}>为此，我们会按以下方式安排这个计划：</p>

              <ul style={marginBottom: '1.5rem'}>
                <li style={fontWeight: 'bold', marginBottom: '0.3rem'}><Icon type='plus' /> 第一阶段：打基础</li>
                <ul style={marginLeft: '1.5rem', marginBottom: '1.5rem'}>
                  <li><Icon type='arrow-right' /> 准备环境</li>
                  <li><Icon type='arrow-right' /> 看演示学习电影搜索应用</li>
                  <li><Icon type='arrow-right' /> 学习工程组织结构</li>
                  <li><Icon type='arrow-right' /> 学习必要的 JAVA 和 OC 知识</li>
                </ul>
                <li style={fontWeight: 'bold', marginBottom: '0.3rem'}><Icon type='plus' /> 第二阶段：尝试开发</li>
                <ul style={marginLeft: '1.5rem', marginBottom: '1.5rem'}>
                  <li><Icon type='arrow-right' /> 学习程序配置</li>
                  <li><Icon type='arrow-right' /> 学习布局和样式</li>
                  <li><Icon type='arrow-right' /> 学习基础组件</li>
                  <li><Icon type='arrow-right' /> 学习高级组件</li>
                  <li><Icon type='arrow-right' /> 学习音频视频 API</li>
                  <li><Icon type='arrow-right' /> 学习位置和重力感应 API</li>
                  <li><Icon type='arrow-right' /> 学习缓存和网络 API</li>
                  <li><Icon type='arrow-right' /> 学习动态效果开发</li>
                </ul>
                <li style={fontWeight: 'bold', marginBottom: '0.3rem'}><Icon type='plus' /> 第三阶段：团队协作</li>
                <ul style={marginLeft: '1.5rem', marginBottom: '1.5rem'}>
                  <li><Icon type='arrow-right' /> 学习开发规范</li>
                  <li><Icon type='arrow-right' /> 学习文档规范</li>
                  <li><Icon type='arrow-right' /> 学习管理代码</li>
                  <li><Icon type='arrow-right' /> 学习分配任务和提交成果</li>
                  <li><Icon type='arrow-right' /> 学习迭代开发</li>
                </ul>
                <li style={fontWeight: 'bold', marginBottom: '0.3rem'}><Icon type='plus' /> 第四阶段：完成产品</li>
                <ul style={marginLeft: '1.5rem', marginBottom: '1.5rem'}>
                  <li><Icon type='arrow-right' /> 学习查错方法</li>
                  <li><Icon type='arrow-right' /> 学习测试方法</li>
                  <li><Icon type='arrow-right' /> 学习重构方法</li>
                  <li><Icon type='arrow-right' /> 学习部署方法</li>
                </ul>
              </ul>
            </div>
          else
            <div>
              <h1 style={marginBottom: '2rem'}>使用 Ruby on Rails 制作一个完整的网站</h1>
              <p style={marginBottom: '1rem'}>我们想让学习这个计划的人完成以下的小目标：</p>
              <ul style={marginBottom: '1.5rem'}>
                <li><Icon type='arrow-right' /> 初步学会 Ruby 语言</li>
                <li><Icon type='arrow-right' /> 初步学会 Rails 框架</li>
                <li><Icon type='arrow-right' /> 懂得什么是完整的网站</li>
                <li><Icon type='arrow-right' /> 初步学会使用数据库</li>
                <li><Icon type='arrow-right' /> 懂得什么是 MVC</li>
                <li><Icon type='arrow-right' /> 懂得什么是 HTTP 请求</li>
                <li><Icon type='arrow-right' /> 学会使用 GIT</li>
                <li><Icon type='arrow-right' /> 学会必要的前端技术</li>
                <li><Icon type='arrow-right' /> 学会怎么样把想法转化成实际的应用</li>
                <li><Icon type='arrow-right' /> 学会大家一起合作</li>
                <li><Icon type='arrow-right' /> 制作出一个网站</li>
                <li style={fontWeight: 'bold'}><Icon type='arrow-right' /> 把网站放到网上给其他人看</li>
              </ul>
              <p style={marginBottom: '1rem'}>为此，我们会按以下方式安排这个计划：</p>

              <ul style={marginBottom: '1.5rem'}>
                <li style={fontWeight: 'bold', marginBottom: '0.3rem'}><Icon type='plus' /> 第一阶段：打基础</li>
                <ul style={marginLeft: '1.5rem', marginBottom: '1.5rem'}>
                  <li><Icon type='arrow-right' /> 准备环境</li>
                  <li><Icon type='arrow-right' /> 看演示学习脚手架</li>
                  <li><Icon type='arrow-right' /> 修改脚手架代码</li>
                </ul>
                <li style={fontWeight: 'bold', marginBottom: '0.3rem'}><Icon type='plus' /> 第二阶段：尝试开发</li>
                <ul style={marginLeft: '1.5rem', marginBottom: '1.5rem'}>
                  <li><Icon type='arrow-right' /> 学习用数据库存取简单数据</li>
                  <li><Icon type='arrow-right' /> 学习用数据库存取复杂数据</li>
                  <li><Icon type='arrow-right' /> 学习数据传递</li>
                  <li><Icon type='arrow-right' /> 把数据在界面上展示出来</li>
                  <li><Icon type='arrow-right' /> 实现用户身份验证</li>
                </ul>
                <li style={fontWeight: 'bold', marginBottom: '0.3rem'}><Icon type='plus' /> 第三阶段：团队协作</li>
                <ul style={marginLeft: '1.5rem', marginBottom: '1.5rem'}>
                  <li><Icon type='arrow-right' /> 学习开发规范</li>
                  <li><Icon type='arrow-right' /> 学习文档规范</li>
                  <li><Icon type='arrow-right' /> 学习管理代码</li>
                  <li><Icon type='arrow-right' /> 学习分配任务和提交成果</li>
                  <li><Icon type='arrow-right' /> 学习迭代开发</li>
                </ul>
                <li style={fontWeight: 'bold', marginBottom: '0.3rem'}><Icon type='plus' /> 第四阶段：完成产品</li>
                <ul style={marginLeft: '1.5rem', marginBottom: '1.5rem'}>
                  <li><Icon type='arrow-right' /> 学习查错方法</li>
                  <li><Icon type='arrow-right' /> 学习测试方法</li>
                  <li><Icon type='arrow-right' /> 学习重构方法</li>
                  <li><Icon type='arrow-right' /> 学习部署方法</li>
                </ul>
              </ul>
            </div>
      }
    </div>
