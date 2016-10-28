{ Alert, Menu, Row, Col } = antd

module.exports = Footer = React.createClass
  render: ->
    <div className='footer'>
      <div className='inner'>
      {
        for link, index in @props.links
          <a href={link.url} key="footer-link-#{index}">
            {link.content}
          </a>
      }
      </div>
    </div>

