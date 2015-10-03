// THIS FILE WAS GENERATED BY bridge.view AND SHOULD NOT BE MODIFIED

library templates_2015_10_03_11_47_07_583;

import "package:bridge/view.dart";

import "dart:async";

@proxy
class Templates extends TemplateCollection {
  Map<String, TemplateGenerator> get templates => {
    "app": () async => new Template(parsed: """<!DOCTYPE html>
<html lang='en' class='no-js no-backdrop-filter'>

  <head>
    <title>Bridge</title>
    <meta charset='UTF-8'>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <script>
      var htmlEl = document.querySelector('html');
      htmlEl.className = htmlEl.className
          .replace('no-js', 'js');
      if ('webkitBackdropFilter' in document.createElement('div').style)
        htmlEl.className = htmlEl.className
            .replace('no-backdrop-filter', 'backdrop-filter');
    </script>
    <link rel='stylesheet' href='/app.css'>
    <script src='//use.typekit.net/dcz8uda.js'></script>
    <script>
      try {
        Typekit.load();
      } catch (e) {
      }
    </script>
  </head>

  <body>
    ${await $include('partials.header')}
    ${$block('content')}
    <script src="http://hammerjs.github.io/dist/hammer.min.js"></script>
  </body>

</html>""", data: data),
    "doc": () async => new Template(parsed: """${await $extends('app', {'content': """
  <div class="page-header">
    <div class="choke">
      <div class="dropdown">
        <button></button>
        <ul class='menu'>
          ${(await Future.wait((docRoutes).map((docRoute) async => """
          <li>
            <a href='${docRoute.url}'>${docRoute.title}</a>
          </li>
          """))).join("")}<li>
            <a href='#'>Something</a>
            <a href='#'>Something</a>
            <a href='#'>Something</a>
            <a href='#'>Something</a>
            <a href='#'>Something</a>
            <a href='#'>Something</a>
            <a href='#'>Something</a>
            <a href='#'>Something</a>
            <a href='#'>Something</a>
            <a href='#'>Something</a>
            <a href='#'>Something</a>
            <a href='#'>Something</a>
            <a href='#'>Something</a>
            <a href='#'>Something</a>
            <a href='#'>Something</a>
            <a href='#'>Something</a>
            <a href='#'>Something</a>
            <a href='#'>Something</a>
            <a href='#'>Something</a>
            <a href='#'>Something</a>
            <a href='#'>Something</a>
            <a href='#'>Something</a>
            <a href='#'>Something</a>
            <a href='#'>Something</a>
            <a href='#'>Something</a>
            <a href='#'>Something</a>
            <a href='#'>Something</a>
            <a href='#'>Something</a>
            <a href='#'>Something</a>
          </li>
        </ul>
      </div>
    </div>
    <h1 class="choke" id='doc-title'>
      ${docRoute.title}
    </h1>
  </div>

  <article class='choke'>
    <div id="doc-content">

      ${await docRoute.doc()}
    </div>
  </article>
"""})}""", data: data),
    "docs": () async => new Template(parsed: """${await $extends('app', {'content': """
  <header class="page-header">
    <h1 class="choke">
      Documentation
    </h1>
  </header>
  <article class="choke">
    Docs
  </article>
"""})}""", data: data),
    "error": () async => new Template(parsed: """${await $extends('app', {'content': """
  <article>
    <h3>
      ${message ?? 'Oops! Something went wrong!'}
      ${await (() async => (code != 200 && code != null) ? """
        <small>($code)</small>
      """ : "")()}</h3>

    
    ${await (() async => (Environment.isDevelopment && stackTrace != null) ? """
      <h6>$exception</h6>
      <pre class='stack-trace'>${$escape($instantiate(#Chain.forTrace, stackTrace).terse.toString())}</pre>
    """ : "")()}</article>
"""})}""", data: data),
    "index": () async => new Template(parsed: """${await $extends('app', {'content': """
  <section id="main">
    <div class="copy">
      <h1>
        Finally, a web app framework that’s both
        <img src="/img/magical.png" alt="magical" class="emoji">
        and
        <img src="/img/cool.png" alt="cool" class="emoji">.
      </h1>

      <p>
        Bridge is a full stack modular web framework for Dart,
        with clarity and agility in mind.
      </p>
    </div>
    <img class='figure' src="/img/welcome_controller.png">
  </section>

  <section id="realtime">
    <div class="copy">
      <h1>Realtime</h1>

      <p>
        Interact with your running application live,
        from the command line shell instance.
      </p>
    </div>
    <img class='figure' src="/img/cli.png">
  </section>

  <section id="fast-modern">
    <div class="copy">
      <h1>Fast &amp; Modern</h1>

      <p>
        Templates and API that’s made for the modern web.
        Automagic pre-compilation for <span class="pale-red">blazing</span> speed.
      </p>
    </div>
    <img class='figure' src="/img/templating.png">
  </section>

  <section id="end-to-end">
    <div class="copy">
      <h1>End-to-end</h1>

      <p>
        Connected with WebSockets through the Tether.
        It’s what we wished XHR would be like.
      </p>
    </div>
    <img class='figure' src="/img/tether.png">
  </section>

  <section id="get-started">
    <div class="copy">
      <h1>Get started!</h1>

      <p>
        Are you ready to try Bridge out? All you need to have
        installed is Dart and a code editor.
      </p>
      <a href='#/getting-started'>Jump in</a>
    </div>
  </section>
"""})}
""", data: data),
    "partials.header": () async => new Template(parsed: """<header class='main-header'>
  <div class="choke">
    <ul class="toolbar">
      <ul class="left">
        <li class="img-container">
          <a href='/'><img src="/img/logo.svg" alt="Bridge"></a>
        </li>
      </ul>
      <ul class="right">
        <li><a href="/docs">Docs</a></li>
      </ul>
    </ul>
  </div>
</header>""", data: data),
  };
}