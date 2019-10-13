prepend = (id, content) =>
  document.getElementById(id).innerHTML = content

prepend('nav',
"""<div class="container is-fluid" style="padding-top: 1rem;padding-left: 1rem;">
    <nav class="breadcrumb">
      <ul>
        <li class="is-active"><a href="https://github.com/Beyarz/lines">Github</a></li>
        <li><a href="https://github.com/Beyarz/lines">Beyar</a></li>
      </ul>
    </nav>
  </div>
"""
)

prepend('logo',
"""<div class="container flex-center full-height">
    <div class="notification">
      <p class="title">Lines</p>
      <p class="subtitle">A new line every 250ms</p>
    </div>
  </div>
"""
)
