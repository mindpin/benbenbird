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
    plans = [
      {
        img: 'http://i.teamkn.com/i/zA0v6MCk.png'
        title: 'Ruby on Rails'
      }
      {
        img: 'http://i.teamkn.com/i/JuWfo56P.png'
        title: 'Wechat Native App'
      }
      {
        img: 'http://i.teamkn.com/i/z9IZR19b.png'
        title: 'ReactJs & jQuery'
      }
      {
        img: 'http://i.teamkn.com/i/s9wKrSRO.jpg'
        title: 'ReactNative'
      }
    ]

    <div className='plans'>
      <div className='inner'>
        <SegmentTitle
          title='专项计划'
          desc='系统的专项训练计划'
        />
        <div className='list'>
        {
          plans.map (plan, idx)->
            <Plan plan={plan} key={idx} />
        }
        </div>
      </div>
    </div>

Plan = React.createClass
  render: ->
    <div className='plan'>
      <div className='icon' style={backgroundImage: "url(#{@props.plan.img})"} />
      <div className='title'>{@props.plan.title}</div>
    </div>


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
        desc: '复杂图形应用'
      }
      {
        title: 'Flappy Bird'
        img: 'http://img.teamkn.com/i/gfLx6RNA.png'
        url: 'http://ben7th.github.io/flappy-html5-bird/'
        desc: '小游戏'
      }
      {
        title: 'JS Warrior'
        img: 'http://img.teamkn.com/i/Mt7I5uCh.png'
        url: 'http://www.mindpin.com/js-warrior/game/1.html'
        desc: '编程游戏'
      }
      {
        title: 'Markdown Editor'
        img: 'http://img.teamkn.com/i/ywzNhutQ.png'
        url: 'http://markdown.4ye.me/'
        desc: '线上编辑工具'
      }
      {
        title: 'd3js demo'
        img: 'http://i.teamkn.com/i/Qw1nRB1o.png'
        url: 'http://www.mindpin.com/d3js-demo/linux/'
        desc: '动态图形应用'
      }
      {
        title: 'flow demo'
        img: 'http://i.teamkn.com/i/j8W5JhsQ.png'
        desc: '流程组织工具'
      }
      {
        title: 'mobile demo'
        img: 'http://i.teamkn.com/i/c9Pe9M7F.png'
        desc: '手机聊天应用'
      }
      {
        title: 'pure css flags'
        img: 'http://i.teamkn.com/i/gTJfz6eT.png'
        url: 'http://ben7th.github.io/worldcup-css-flags/'
        desc: 'H5 特效'
      }
    ]

    <div className='works'>
      <div className='inner'>
        <SegmentTitle
          title='作品示例'
          desc='通过我们的教学，你也可以开发类似的应用'
        />
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
          <div className='td'>
            <h3>{@props.work.title}</h3>
            <div className='desc'>{@props.work.desc}</div>
          </div>
          {
            if @props.work.url
              <a href={@props.work.url} target='_blank'>
                <Icon type='eye-o' /> open
              </a>
          }
        </div>
      </div>
    </div>

SegmentTitle = React.createClass
  render: ->
    <div className='segment-title'>
      <h2>{@props.title}</h2>
      <p>{@props.desc}</p>
    </div>