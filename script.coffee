app = document.getElementById('app-root')

generateNode = (width, r, g, b) ->
  objectNode = document.createElement('div')
  objectNode.className = 'round container'
  objectNode.style = "border: 0.4rem solid rgb(#{r}, #{g}, #{b})";
  objectNode.style.width = width + 'rem';
  return objectNode

injectDom = (object) ->
  app.appendChild(object)

rand = (max, min) ->
  return Math.floor(Math.random() * max) + min

regenerate = ->
  app
    .childNodes[0]
    .remove()
  generate(2)

generate = (amount) ->
  count = 1
  while count != amount
    width = rand(24, 1)
    r = rand(255, 2)
    g = rand(255, 2)
    b = rand(255, 2)
    node = generateNode(width, r, g, b)
    injectDom(node)
    count++

generate(rand(12, 6)) and setInterval( regenerate, 250 )
