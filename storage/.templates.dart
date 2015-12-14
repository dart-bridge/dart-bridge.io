import 'package:bridge/view.dart';
class Templates extends TemplateCache {
Templates(Map<Symbol, dynamic> variables) : super(variables);
Map<String, TemplateGenerator> get collection => {
'code_windows.cli': () async* {
yield '''<div class="code-window">''';
yield '''  <i class='code-window__fake-button --red'></i>''';
yield '''  <i class='code-window__fake-button --yellow'></i>''';
yield '''  <i class='code-window__fake-button --green'></i>''';
yield '''    <pre><code class="language-bridge-cli"><span class="hljs-literal">=<span class="hljs-method"> </span><span class="hljs-method">s</span><span class="hljs-method">t</span><span class="hljs-method">a</span><span class="hljs-method">r</span><span class="hljs-method">t</span></span><br>''';
yield '''Server started on http:\/\/localhost:1337<br>''';
yield '''<span class="hljs-literal">=</span> <span class="hljs-method">awesome_sauce</span><br>''';
yield '''Aww yeah!''';
yield '''</code></pre>''';
yield '''</div>''';

},
'code_windows.templating': () async* {
yield '''<div class="code-window">''';
yield '''  <i class='code-window__fake-button --red'></i>''';
yield '''  <i class='code-window__fake-button --yellow'></i>''';
yield '''  <i class='code-window__fake-button --green'></i>''';
yield '''    <pre><code class="language-chalk">@<span class="hljs-keyword">extends</span> <span class="dart"><span class="hljs-punctuation">(</span><span class="hljs-string">'app'</span><span class="hljs-punctuation">)</span></span><br><br>''';
yield '''@<span class="hljs-keyword">start block</span> <span class="dart"><span class="hljs-punctuation">(</span><span class="hljs-string">'content'</span><span class="hljs-punctuation">)</span></span><br><br>''';
yield '''  <span class='hljs-comment'>\/\/ Display all items</span><br>''';
yield '''  <span class="hljs-keyword">&lt;ul&gt;</span><br>''';
yield '''    @<span class="hljs-keyword">for</span> <span class="dart"><span class="hljs-punctuation">(</span>item <span class="hljs-keyword">in</span> items<span class="hljs-punctuation">)</span></span><br>''';
yield '''      <span class="hljs-keyword">&lt;li&gt;</span><span class="hljs-literal">\${<span class="dart">item.<span class="hljs-method">name</span></span>}</span><span class="hljs-keyword">&lt;/li&gt;</span><br>''';
yield '''    @<span class="hljs-keyword">end for</span><br>''';
yield '''  <span class="hljs-keyword">&lt;/ul&gt;</span><br><br>''';
yield '''@<span class="hljs-keyword">end block</span>''';
yield '''</code></pre>''';
yield '''</div>''';

},
'code_windows.tether': () async* {
for (final line in r'''

<div class="code-window --back">
  <i class='code-window__fake-button --red'></i>
  <i class='code-window__fake-button --yellow'></i>
  <i class='code-window__fake-button --green'></i>
    <pre><code class="language-dart"><span class="hljs-comment">// Server side</span><br>
tether.<span class="hljs-method">listen</span><span class="hljs-punctuation">(</span><span class="hljs-string">'add article'</span>, <span class="hljs-punctuation">(</span><span class="hljs-type">Article</span> article<span class="hljs-punctuation">)</span> <span class="hljs-punctuation">{</span><br>
  articles.<span class="hljs-method">add</span><span class="hljs-punctuation">(</span>article<span class="hljs-punctuation">)</span><span class="hljs-punctuation">;</span><br><br>
  <span class="hljs-comment">// Realtime broadcasting events</span><br>
  tetherManager.<span class="hljs-method">broadcast</span><span class="hljs-punctuation">(</span><span class="hljs-string">'article was added'</span>, article<span class="hljs-punctuation">)</span><span class="hljs-punctuation">;</span><br>
<span class="hljs-punctuation">}</span><span class="hljs-punctuation">)</span><span class="hljs-punctuation">;</span>
</code></pre>
</div>
<div class="code-window --front">
  <i class='code-window__fake-button --red'></i>
  <i class='code-window__fake-button --yellow'></i>
  <i class='code-window__fake-button --green'></i>
    <pre><code class="language-dart"><span class="hljs-comment">// Client side</span><br>
var article <span class="hljs-punctuation">=</span> <span class="hljs-keyword">new</span> <span class="hljs-type">Article</span><span class="hljs-punctuation">(</span><span class="hljs-string">'Bridge is amazing!'</span><span class="hljs-punctuation">)</span><span class="hljs-punctuation">;</span><br><br>
tether.<span class="hljs-method">send</span><span class="hljs-punctuation">(</span><span class="hljs-string">'add article'</span>, article<span class="hljs-punctuation">)</span><span class="hljs-punctuation">;</span>
</code></pre>
</div>

'''.split('\n')) yield line;

},
'code_windows.welcome_controller': () async* {
yield '''<div class="code-window">''';
yield '''  <i class='code-window__fake-button --red'></i>''';
yield '''  <i class='code-window__fake-button --yellow'></i>''';
yield '''  <i class='code-window__fake-button --green'></i>''';
yield '''    <pre><code class="language-dart"><span class="hljs-keyword">part</span> <span class="hljs-keyword">of</span> main<span class="hljs-punctuation">;</span><br><br>''';
yield '''<span class="hljs-keyword">class</span> <span class="hljs-type">WelcomeController</span> <span class="hljs-punctuation">{</span><br>''';
yield '''  index<span class="hljs-punctuation">(</span><span class="hljs-punctuation">)</span> <span class="hljs-punctuation">{</span><br>''';
yield '''    <span class="hljs-keyword">return</span> template<span class="hljs-punctuation">(</span><span class="hljs-string">'index'</span><span class="hljs-punctuation">)</span><br>''';
yield '''      ..<span class="hljs-method">title</span> <span class="hljs-punctuation">=</span> <span class="hljs-string">'Hello, world!'</span><span class="hljs-punctuation">;</span><br>''';
yield '''  <span class="hljs-punctuation">}</span><br>''';
yield '''<span class="hljs-punctuation">}</span>''';
yield '''</code></pre>''';
yield '''</div>''';

},
'doc': () async* {
yield* $extends('masters.page', {
'page-header': () async* {
yield '''  <h1 class="choke" id='doc-title'>''';
yield '''    ${$esc(title)}''';
yield '''  </h1>''';
},
'page-content': () async* {
yield '''  <div id="doc-content">''';
yield '''    ${markup}''';
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
yield* $generate('code_windows.welcome_controller');
yield '''  </section>''';
yield '''  <section id="realtime">''';
yield '''    <div class="copy">''';
yield '''      <h1>Realtime</h1>''';
yield '''      <p>''';
yield '''        Interact with your running application live,''';
yield '''        from the command line shell instance.''';
yield '''        <a href="/docs/bridge.cli" class="read-more">Read&nbsp;more</a>''';
yield '''      </p>''';
yield '''    </div>''';
yield* $generate('code_windows.cli');
yield '''  </section>''';
yield '''  <section id="fast-modern">''';
yield '''    <div class="copy">''';
yield '''      <h1>Fast &amp; Modern</h1>''';
yield '''      <p>''';
yield '''        Optional server side templating that’s made for the modern web.''';
yield '''        Pre-compiled for <span class="pale-red">blazing</span>&nbsp;speed.''';
yield '''        <a href="/docs/bridge.view" class="read-more">Read&nbsp;more</a>''';
yield '''      </p>''';
yield '''    </div>''';
yield* $generate('code_windows.templating');
yield '''  </section>''';
yield '''  <section id="end-to-end">''';
yield '''    <div class="copy">''';
yield '''      <h1>End-to-end</h1>''';
yield '''      <p>''';
yield '''        Connected with WebSockets through the Tether.''';
yield '''        It’s what we wished XHR would be like.''';
yield '''        <a href="/docs/bridge.tether" class="read-more">Read&nbsp;more</a>''';
yield '''      </p>''';
yield '''    </div>''';
yield* $generate('code_windows.tether');
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

yield '''    <script>''';
yield '''      (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){''';
yield '''            (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),''';
yield '''          m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)''';
yield '''      })(window,document,'script','//www.google-analytics.com/analytics.js','ga');''';
yield '''      ga('create', 'UA-69853560-1', 'auto');''';
yield '''      ga('send', 'pageview');''';
yield '''    </script>''';

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
yield '''              <li ${route.url == currentUrl ? 'class="active"' : ''}><a href="${route.url}">${$esc(route.title)}</a></li>''';
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
