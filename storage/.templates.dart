import 'package:bridge/view.dart';
class Templates extends TemplateCache {
Templates(Map<Symbol, dynamic> variables) : super(variables);
Map<String, TemplateGenerator> get collection => {
'doc': () async* {
yield* $extends('masters.page', {

'page-header': () async* {
yield '''  <h1 class="choke" id='doc-title'>''';
yield '''    ${$esc(docRoute.title)}''';
yield '''  </h1>''';
},

'page-content': () async* {
yield '''  <div id="doc-content">''';
yield '''    ${await docRoute.doc()}''';
yield '''  </div>''';
},

});

},
'error': () async* {
yield* $extends('masters.app', {

'content': () async* {
yield '''  <article class='choke'>''';
yield '''    <h3>''';
yield '''      ${$esc(message ?? 'Oops! Something went wrong!')}''';
yield* $if([[code != 200 && code != null, () async* {
yield '''        <small>(${$esc(code)})</small>''';
}]]);
yield '''    </h3>''';


yield* $if([[Environment.isDevelopment && stackTrace != null, () async* {
yield '''      <h6>${$esc(exception)}</h6>''';
yield '''      <pre class='stack-trace'><code>${$esc($new(#Chain.forTrace)(stackTrace).terse)}</code></pre>''';
}]]);
yield '''  </article>''';
},

});

},
'index': () async* {
yield* $extends('masters.app', {

'content': () async* {
yield '''  <section id="main">''';
yield '''    <div class="copy">''';
yield '''      <h1>''';
yield '''        The web framework that goes''';
yield '''        <span class="no-break">''';
yield '''          all <img src="/img/magical.png" alt="magical" class="emoji">''';
yield '''        </span>''';
yield '''        and then you're''';
yield '''        <span class="no-break">''';
yield '''          like <img src="/img/cool.png" alt="cool" class="emoji">.''';
yield '''        </span>''';
yield '''      </h1>''';

yield '''      <p>''';
yield '''        Bridge is a full stack modular web framework for Dart,''';
yield '''        with clarity and agility in mind.''';
yield '''      </p>''';
yield '''    </div>''';
yield '''    <img class='figure' src="/img/welcome_controller.png">''';
yield '''  </section>''';

yield '''  <section id="realtime">''';
yield '''    <div class="copy">''';
yield '''      <h1>Realtime</h1>''';

yield '''      <p>''';
yield '''        Interact with your running application live,''';
yield '''        from the command line shell instance.''';
yield '''      </p>''';
yield '''    </div>''';
yield '''    <img class='figure' src="/img/cli.png">''';
yield '''  </section>''';

yield '''  <section id="fast-modern">''';
yield '''    <div class="copy">''';
yield '''      <h1>Fast &amp; Modern</h1>''';

yield '''      <p>''';
yield '''        Templates and API that’s made for the modern web.''';
yield '''        Automagic pre-compilation for <span class="pale-red">blazing</span> speed.''';
yield '''      </p>''';
yield '''    </div>''';
yield '''    <img class='figure' src="/img/templating.png">''';
yield '''  </section>''';

yield '''  <section id="end-to-end">''';
yield '''    <div class="copy">''';
yield '''      <h1>End-to-end</h1>''';

yield '''      <p>''';
yield '''        Connected with WebSockets through the Tether.''';
yield '''        It’s what we wished XHR would be like.''';
yield '''      </p>''';
yield '''    </div>''';
yield '''    <img class='figure' src="/img/tether.png">''';
yield '''  </section>''';

yield '''  <section id="get-started">''';
yield '''    <div class="copy">''';
yield '''      <h1>Get started!</h1>''';

yield '''      <p>''';
yield '''        Are you ready to try Bridge out?''';
yield '''      </p>''';
yield '''      <a href='/docs/installation'>Jump in</a>''';
yield '''    </div>''';
yield '''  </section>''';
},

});

},
'masters.app': () async* {
yield '''<!DOCTYPE html>''';
yield '''<html lang='en' class='no-js no-backdrop-filter'>''';

yield '''  <head>''';
yield '''    <title>Bridge</title>''';
yield '''    <meta charset='UTF-8'>''';
yield '''    <meta name='viewport' content='width=device-width, initial-scale=1, maximum-scale=1'>''';
yield '''    <script>''';
yield '''      var htmlEl = document.querySelector('html');''';
yield '''      htmlEl.className = htmlEl.className''';
yield '''          .replace('no-js', 'js');''';
yield '''      if ('webkitBackdropFilter' in document.createElement('div').style)''';
yield '''        htmlEl.className = htmlEl.className''';
yield '''            .replace('no-backdrop-filter', 'backdrop-filter');''';
yield '''    </script>''';
yield '''    <link rel='stylesheet' href='/app.css'>''';
yield '''    <link rel='apple-touch-icon' href='/apple-touch-icon.png'>''';
yield '''    <script src='//use.typekit.net/dcz8uda.js'></script>''';
yield '''    <script>''';
yield '''      try {''';
yield '''        Typekit.load();''';
yield '''      } catch (e) {''';
yield '''      }''';
yield '''    </script>''';
yield '''  </head>''';

yield '''  <body class='area-${$esc(area ?? "generic")} ${$esc(menu == null ? "no-menu" : "has-menu")}'>''';
yield* $generate('partials.header');
yield* $block('content');
yield '''    <script src="http://hammerjs.github.io/dist/hammer.min.js"></script>''';
yield '''  </body>''';

yield '''</html>''';

},
'masters.page': () async* {
yield* $extends('masters.app', {

'content': () async* {
yield '''  <header class="page-header color-${$esc(headerColor ?? 'dark')}">''';
yield* $block('page-header');
yield '''  </header>''';
yield '''  <article class="choke">''';
yield* $block('page-content');
yield '''  </article>''';
},

});

},
'partials.header': () async* {
yield '''<header class='main-header'>''';
yield '''  <div class="choke">''';
yield '''    <ul class="toolbar">''';
yield '''      <ul class="left">''';
yield '''        <li class="img-container">''';
yield '''          <a href='/'><img src="/img/logo.svg" alt="Bridge"></a>''';
yield '''        </li>''';
yield '''      </ul>''';
yield '''      <ul class="right menu-wide beta">''';
yield '''        <li class='${$esc(area == "download" ? "active" : "")}'><a href="/download">Download</a></li>''';
yield '''        <li class='${$esc(area == "docs" ? "active" : "")}'><a href="/docs">Docs</a></li>''';

yield '''      </ul>''';
yield '''      <ul class="right menu-narrow alpha">''';
yield '''        <li>''';
yield '''          <button class='menu-toggle'></button>''';
yield '''        </li>''';
yield '''      </ul>''';
yield '''    </ul>''';
yield '''  </div>''';
yield '''</header>''';
yield '''<div class="choke">''';
yield '''  <ul class="menu-master alpha ${$esc(menu == null ? 'no-menu' : '')}">''';
yield '''    <ul class="menu-narrow beta">''';
yield '''      <li>''';
yield '''        <a href="/download">Download</a>''';
yield '''      </li>''';
yield '''      <li class='${$esc(area == "docs" ? "active" : "")}'>''';
yield '''        <a href="/docs">Docs</a>''';
yield '''      </li>''';



yield '''    </ul>''';
yield* $if([[menu != null, () async* {
yield '''      <ul class="menu-master gamma">''';
yield* $for(menu.keys, (category) async* {
yield '''          <ul class="menu-master category">''';
yield '''            <span>${$esc(category)}</span>''';
yield* $for(menu[category], (route) async* {
yield '''              <li><a href="${$esc(route.url)}">${$esc(route.title)}</a></li>''';
});
yield '''          </ul>''';
});
yield '''      </ul>''';
}]]);
yield '''  </ul>''';
yield '''</div>''';


},
'resources': () async* {
yield* $extends('masters.page', {

'page-header': () async* {
yield '''  <h1 class="choke" id='doc-title'>''';
yield '''    Resources''';
yield '''  </h1>''';
},

'page-content': () async* {
yield '''  <div id="doc-content">''';
yield '''    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet asperiores aspernatur commodi dicta dolor earum facilis hic iusto maxime, nobis porro possimus provident quis sed tempora velit voluptatibus voluptatum!</p>''';
yield '''    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet asperiores aspernatur commodi dicta dolor earum facilis hic iusto maxime, nobis porro possimus provident quis sed tempora velit voluptatibus voluptatum!</p>''';
yield '''    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet asperiores aspernatur commodi dicta dolor earum facilis hic iusto maxime, nobis porro possimus provident quis sed tempora velit voluptatibus voluptatum!</p>''';
yield '''    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet asperiores aspernatur commodi dicta dolor earum facilis hic iusto maxime, nobis porro possimus provident quis sed tempora velit voluptatibus voluptatum!</p>''';
yield '''    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet asperiores aspernatur commodi dicta dolor earum facilis hic iusto maxime, nobis porro possimus provident quis sed tempora velit voluptatibus voluptatum!</p>''';
yield '''    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet asperiores aspernatur commodi dicta dolor earum facilis hic iusto maxime, nobis porro possimus provident quis sed tempora velit voluptatibus voluptatum!</p>''';
yield '''    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet asperiores aspernatur commodi dicta dolor earum facilis hic iusto maxime, nobis porro possimus provident quis sed tempora velit voluptatibus voluptatum!</p>''';
yield '''    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet asperiores aspernatur commodi dicta dolor earum facilis hic iusto maxime, nobis porro possimus provident quis sed tempora velit voluptatibus voluptatum!</p>''';
yield '''    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet asperiores aspernatur commodi dicta dolor earum facilis hic iusto maxime, nobis porro possimus provident quis sed tempora velit voluptatibus voluptatum!</p>''';
yield '''    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet asperiores aspernatur commodi dicta dolor earum facilis hic iusto maxime, nobis porro possimus provident quis sed tempora velit voluptatibus voluptatum!</p>''';
yield '''    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet asperiores aspernatur commodi dicta dolor earum facilis hic iusto maxime, nobis porro possimus provident quis sed tempora velit voluptatibus voluptatum!</p>''';
yield '''    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet asperiores aspernatur commodi dicta dolor earum facilis hic iusto maxime, nobis porro possimus provident quis sed tempora velit voluptatibus voluptatum!</p>''';
yield '''    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet asperiores aspernatur commodi dicta dolor earum facilis hic iusto maxime, nobis porro possimus provident quis sed tempora velit voluptatibus voluptatum!</p>''';
yield '''    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet asperiores aspernatur commodi dicta dolor earum facilis hic iusto maxime, nobis porro possimus provident quis sed tempora velit voluptatibus voluptatum!</p>''';
yield '''    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet asperiores aspernatur commodi dicta dolor earum facilis hic iusto maxime, nobis porro possimus provident quis sed tempora velit voluptatibus voluptatum!</p>''';
yield '''    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet asperiores aspernatur commodi dicta dolor earum facilis hic iusto maxime, nobis porro possimus provident quis sed tempora velit voluptatibus voluptatum!</p>''';
yield '''    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet asperiores aspernatur commodi dicta dolor earum facilis hic iusto maxime, nobis porro possimus provident quis sed tempora velit voluptatibus voluptatum!</p>''';
yield '''    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet asperiores aspernatur commodi dicta dolor earum facilis hic iusto maxime, nobis porro possimus provident quis sed tempora velit voluptatibus voluptatum!</p>''';
yield '''  </div>''';
yield '''  <div id="hej">Hej</div>''';
},

});

},
};
}
