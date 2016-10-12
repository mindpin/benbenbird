{ Button } = antd

module.exports = IndexPage = React.createClass
  render: ->
    <div className='page-index'>
      <Content {...@props} />
    </div>

Content = React.createClass
  handleButtonClick: (url)->
    () =>
      window.location.href = url

  render: ->
    <div className="pages">
      <div className="page" id="page-1">
        <div className="text-wrapper">
          <h2>笨笨鸟协会</h2>
        </div>
      </div>

      <div className="page" id="page-2">
        <div className="image-wrapper image-wrapper-even">
        </div>
        <div className="text-wrapper text-wrapper-even">
          <h2>Rails Web开发</h2>
          <p>描述</p>
          <Button type="primary" onClick={@handleButtonClick("/1")}>
            课程目录
            <FaIcon type="angle-right" />
          </Button>
        </div>
      </div>

      <div className="page" id="page-3">
        <div className="image-wrapper image-wrapper-odd">
        </div>
        <div className="text-wrapper text-wrapper-odd">
          <h2>微信小程序开发</h2>
          <p>描述</p>
          <Button type="primary" onClick={@handleButtonClick} data-url="/1">
            课程目录
            <FaIcon type="angle-right" />
          </Button>
        </div>
      </div>

      <div className="page" id="page-4">
        <div className="image-wrapper image-wrapper-even">
        </div>
        <div className="text-wrapper text-wrapper-even">
          <h2>React JS & jQuery前端开发</h2>
          <p>描述</p>
          <Button type="primary" onClick={@handleButtonClick("/1")}>
            课程目录
            <FaIcon type="angle-right" />
          </Button>
        </div>
      </div>

      <div className="page" id="page-5">
        <div className="image-wrapper image-wrapper-odd">
        </div>
        <div className="text-wrapper text-wrapper-odd">
          <h2>React Native移动应用开发</h2>
          <p>描述</p>
          <Button type="primary" onClick={@handleButtonClick} data-url="/1">
            课程目录
            <FaIcon type="angle-right" />
          </Button>
        </div>
      </div>

      <div className="page" id="page-6">
        <div className="text-wrapper-bottom">
          <h2>截图</h2>
          <p>这是一些描述</p>
          <Button type="primary" onClick={@handleButtonClick("/1")}>
            课程目录
            <FaIcon type="angle-right" />
          </Button>
        </div>
        <div className="image-wrapper-bottom">
        </div>
      </div>

      <div className="page" id="page-7">
        <div className="text-wrapper-bottom">
          <h2>线上思维导图</h2>
          <p>这是一些描述</p>
          <Button type="primary" onClick={@handleButtonClick("/1")}>
            课程目录
            <FaIcon type="angle-right" />
          </Button>
        </div>
        <div className="image-wrapper-bottom">
        </div>
      </div>

      <div className="page" id="page-8">
        <div className="text-wrapper-bottom">
          <h2>手机聊天客户端</h2>
          <p>这是一些描述</p>
          <Button type="primary" onClick={@handleButtonClick("/1")}>
            课程目录
            <FaIcon type="angle-right" />
          </Button>
        </div>
        <div className="image-wrapper-bottom">
        </div>
      </div>

      <div className="page" id="page-9">
        <div className="text-wrapper-bottom">
          <h2>流程编辑器</h2>
          <p>这是一些描述</p>
          <Button type="primary" onClick={@handleButtonClick("/1")}>
            课程目录
            <FaIcon type="angle-right" />
          </Button>
        </div>
        <div className="image-wrapper-bottom">
        </div>
      </div>

      <div className="page" id="page-10">
        <div className="text-wrapper-bottom">
          <h2>js-warrior</h2>
          <p>这是一些描述</p>
          <Button type="primary" onClick={@handleButtonClick("/1")}>
            课程目录
            <FaIcon type="angle-right" />
          </Button>
        </div>
        <div className="image-wrapper-bottom">
        </div>
      </div>

      <div className="page" id="page-11">
        <div className="text-wrapper-bottom">
          <h2>flappy bird</h2>
          <p>这是一些描述</p>
          <Button type="primary" onClick={@handleButtonClick("/1")}>
            课程目录
            <FaIcon type="angle-right" />
          </Button>
        </div>
        <div className="image-wrapper-bottom">
        </div>
      </div>
    </div>
