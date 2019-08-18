# The root element where everything spawns within
app = document.getElementById('app-root')

###
  r = red
  g = green
  b = blue
###
generateNode = (width, r, g, b) ->
  objectNode = document.createElement('p')
  objectNode.className = 'round container'
  objectNode.style = "border: 2px solid rgb(#{r}, #{g}, #{b})";
  objectNode.style.width = width + 'rem';
  return objectNode

injectDom = (object) ->
  app.appendChild(object)

rand = (max, min) ->
  return Math.floor(Math.random() * max) + min


# Remove the first child and generate a new one
regenerate = ->
  app
    .childNodes[0]
    .remove()
  generate(2)

# Generates individual lines
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

###
When the windows first loads generate a full set of random
lines then start remove the first child and inject a freshly
generated line
###
generate(rand(12, 6)) and setInterval( regenerate, 250 )

`//# sourceMappingURL=script.js.map`
