// THIS FILE WAS GENERATED BY bridge.view AND SHOULD NOT BE MODIFIED

library templates_2015_09_06_22_54_59_213;

import "package:bridge/view.dart";

import "dart:async";

@proxy
class Templates extends TemplateCollection {
  Map<String, TemplateGenerator> get templates => {
    "app": () async => new Template(parsed: """<!DOCTYPE html>
<html lang='en'>

  <head>
    <title>Bridge</title>
    <meta charset='UTF-8'>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
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
  </body>

</html>""", data: data),
    "doc": () async => new Template(parsed: """${await $extends('app', {'content': """
  <ul>
    ${(await Future.wait((urls).map((url) async => """
      <a href='/docs/$url'>$url</a>
    """))).join("")}</ul>
  <div id="doc-content">
    $content
  </div>
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
    "partials.header": () async => new Template(parsed: """<header>
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
</header>""", data: data),
  };
}