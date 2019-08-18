generateNode = (width, r, g, b) ->
  objectNode = document.createElement('p')
  objectNode.className = 'round container'
  objectNode.style = 'border: 2px solid rgb(' + r + ', ' + g + ', ' + b + ')';
  objectNode.style.width = width + 'rem';
  return objectNode

injectDom = (object) ->
  app = document.getElementById('app-root')
  app.appendChild(object)

rand = (int, min) ->
  return Math.floor(Math.random() * int) + min

regenerate = () ->
  document.getElementById('app-root')
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
