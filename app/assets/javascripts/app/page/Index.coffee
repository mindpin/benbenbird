module.exports = IndexPage = React.createClass
  render: ->
    <div className='page-index'>
      <Content {...@props} />
    </div>

Content = React.createClass
  render: ->
    <div>
      正文
    </div>
