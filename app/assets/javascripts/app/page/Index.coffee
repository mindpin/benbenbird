{ Button, Row, Col, Icon } = antd

module.exports = IndexPage = React.createClass
  render: ->
    <div className='page-index'>
      <Welcome />
      <Plans />
      <Works />
    </div>

Welcome = React.createClass
  render: ->
    { Carousel } = antd

    plans = [
      {
        title: 'Ruby on Rails'
        desc: [
          '最容易掌握的编程语言'
          '效率最高的网站开发技术'
        ],
        key: 'rails'
      }
      {
        title: 'Wechat Native App'
        desc: [
          '下一个热门开发方向'
          '前沿的工具和理念'
        ],
        key: 'wechat_app'
      }
      {
        title: 'ReactJs & jQuery'
        desc: [
          '当下最流行的前端新技术'
          '以及使用最广泛的前端传统技术'
        ],
        key: 'react_jquery'
      }
      {
        title: 'ReactNative'
        desc: [
          '用一种技术开发安卓和苹果两种手机应用'
          '刷新你的 Javascript 认知'
        ],
        key: 'react_native'
      }
    ]

    <div className='welcome'>
      <Carousel autoplay>
        {
          plans.map (x, idx)->
            <div className="i#{idx + 1}" key={idx}>
              <div className='inner'>
                <h2>{"{ #{x.title} }"}</h2>
                <div className='desc'>
                {
                  x.desc.map (d, idx1)->
                    <div key={idx1}>
                      # => <span>{d}</span>
                    </div>
                }
                </div>
                <Button size='large' type='primary'>
                  <Icon type='arrow-right' /> 打开课程计划
                </Button>
              </div>
            </div>
        }
      </Carousel>
    </div>

Plans = React.createClass
  render: ->
    <div />

Works = React.createClass
  render: ->
    colors = [
      '#393b79'
      '#5254a3'
      '#6b6ecf'
      '#9c9ede'
      '#637939'
      '#8ca252'
      '#b5cf6b'
      '#cedb9c'
      '#8c6d31'
      '#bd9e39'
      '#e7ba52'
      '#e7cb94'
      '#843c39'
      '#ad494a'
      '#d6616b'
      '#e7969c'
      '#7b4173'
      '#a55194'
      '#ce6dbd'
      '#de9ed6'
    ]

    works = [
      {
        title: 'H5 MindMap'
        img: 'http://img.teamkn.com/i/UCQUtQYa.png'
        url: 'http://mindmap.4ye.me/U04vFulK'
      }
      {
        title: 'Flappy Bird'
        img: 'http://img.teamkn.com/i/gfLx6RNA.png'
        url: 'http://ben7th.github.io/flappy-html5-bird/'
      }
      {
        title: 'JS Warrior'
        img: 'http://img.teamkn.com/i/Mt7I5uCh.png'
        url: 'http://www.mindpin.com/js-warrior/game/1.html'
      }
      {
        title: 'Markdown Editor'
        img: 'http://img.teamkn.com/i/ywzNhutQ.png'
        url: 'http://markdown.4ye.me/'
      }
      {
        title: 'd3js demo'
        img: 'http://i.teamkn.com/i/Qw1nRB1o.png'
        url: 'http://www.mindpin.com/d3js-demo/linux/'
      }
      {
        title: 'flow demo'
        img: 'http://i.teamkn.com/i/j8W5JhsQ.png'
      }
      {
        title: 'mobile demo'
        img: 'http://i.teamkn.com/i/c9Pe9M7F.png'
      }
      {
        title: 'pure css flags'
        img: 'http://i.teamkn.com/i/gTJfz6eT.png'
        url: 'http://ben7th.github.io/worldcup-css-flags/'
      }
    ]

    <div className='works'>
      <div className='inner'>
        <div className='h2'>
          <h2>作品示例</h2>
          <p>通过我们的教学，你也可以开发类似的应用</p>
        </div>
      {
        works.map (w, idx)->
          <Work work={w} key={idx} idx={idx} color={colors[idx * 2]} />
      }
      </div>
    </div>

Work = React.createClass
  render: ->
    <div className='work'>
      <div className="wi wi#{@props.idx}"
        style={backgroundImage: "url(#{@props.work.img})"}
      >
        <div className='c' style={backgroundColor: @props.color} />
        <div className='ct'>
          <h3>{@props.work.title}</h3>
          {
            if @props.work.url
              <a href={@props.work.url} target='_blank'>
                <Icon type='eye-o' /> open
              </a>
          }
        </div>
      </div>
    </div>

# Content = React.createClass
#   handleButtonClick: (url)->
#     () =>
#       window.location.href = url

#   render: ->
#     <div className="pages">
#       <div className="page" id="page-1">
#         <div className="text-wrapper">
#           <h2>笨笨鸟学院</h2>
#         </div>
#       </div>

#       <div className="page" id="page-2">
#         <div className="image-wrapper image-wrapper-even">
#         </div>
#         <div className="text-wrapper text-wrapper-even">
#           <h2>Rails Web开发</h2>
#           <p>描述</p>
#           <Button type="primary" onClick={@handleButtonClick("/intro?current=rails")}>
#             课程目录
#             <FaIcon type="angle-right" />
#           </Button>
#         </div>
#       </div>

#       <div className="page" id="page-3">
#         <div className="image-wrapper image-wrapper-odd">
#         </div>
#         <div className="text-wrapper text-wrapper-odd">
#           <h2>微信小程序开发</h2>
#           <p>描述</p>
#           <Button type="primary" onClick={@handleButtonClick("/intro?current=wechat_app")}>
#             课程目录
#             <FaIcon type="angle-right" />
#           </Button>
#         </div>
#       </div>

#       <div className="page" id="page-4">
#         <div className="image-wrapper image-wrapper-even">
#         </div>
#         <div className="text-wrapper text-wrapper-even">
#           <h2>React JS & jQuery前端开发</h2>
#           <p>描述</p>
#           <Button type="primary" onClick={@handleButtonClick("/intro?current=react_jquery")}>
#             课程目录
#             <FaIcon type="angle-right" />
#           </Button>
#         </div>
#       </div>

#       <div className="page" id="page-5">
#         <div className="image-wrapper image-wrapper-odd">
#         </div>
#         <div className="text-wrapper text-wrapper-odd">
#           <h2>React Native移动应用开发</h2>
#           <p>描述</p>
#           <Button type="primary" onClick={@handleButtonClick("/intro?current=react_native")}>
#             课程目录
#             <FaIcon type="angle-right" />
#           </Button>
#         </div>
#       </div>

#       <div className="page" id="page-6">
#         <div className="text-wrapper-bottom">
#           <h2>截图</h2>
#           <p>这是一些描述</p>
#           <p>这是一些描述</p>
#           <p>这是一些描述</p>
#         </div>
#         <Row type="flex" justify="space-around" align="middle">
#           <Col span={4}>
#             <a href="javascript:;">
#               <img src="http://placekitten.com/g/200/200" />
#             </a>
#           </Col>
#           <Col span={4}>
#             <a href="javascript:;">
#               <img src="http://placekitten.com/g/200/200" />
#             </a>
#           </Col>
#           <Col span={4}>
#             <a href="javascript:;">
#               <img src="http://placekitten.com/g/200/200" />
#             </a>
#           </Col>
#           <Col span={4}>
#             <a href="javascript:;">
#               <img src="http://placekitten.com/g/200/200" />
#             </a>
#           </Col>
#         </Row>
#       </div>

#       <div className="page" id="page-8">
#         <div className="text-wrapper-bottom">
#           <h2>手机聊天客户端</h2>
#           <p>这是一些描述</p>
#           <Button type="primary" onClick={@handleButtonClick("#")}>
#             课程目录
#             <FaIcon type="angle-right" />
#           </Button>
#         </div>
#         <div className="image-wrapper-bottom">
#         </div>
#       </div>

#       <div className="page" id="page-9">
#         <div className="text-wrapper-bottom">
#           <h2>流程编辑器</h2>
#           <p>这是一些描述</p>
#           <Button type="primary" onClick={@handleButtonClick("#")}>
#             课程目录
#             <FaIcon type="angle-right" />
#           </Button>
#         </div>
#         <div className="image-wrapper-bottom">
#         </div>
#       </div>

#       <div className="page" id="page-10">
#         <div className="text-wrapper-bottom">
#           <h2>js-warrior</h2>
#           <p>这是一些描述</p>
#           <Button type="primary" onClick={@handleButtonClick("#")}>
#             课程目录
#             <FaIcon type="angle-right" />
#           </Button>
#         </div>
#         <div className="image-wrapper-bottom">
#         </div>
#       </div>

#       <div className="page" id="page-11">
#         <div className="text-wrapper-bottom">
#           <h2>flappy bird</h2>
#           <p>这是一些描述</p>
#           <Button type="primary" onClick={@handleButtonClick("#")}>
#             课程目录
#             <FaIcon type="angle-right" />
#           </Button>
#         </div>
#         <div className="image-wrapper-bottom">
#         </div>
#       </div>
#     </div>
