// THIS FILE WAS GENERATED BY bridge.view AND SHOULD NOT BE MODIFIED

library templates_2015_09_06_15_38_05_763;

import "package:bridge/view.dart";

import "dart:async";

@proxy
class Templates extends TemplateCollection {
  Map<String, TemplateGenerator> get templates => {
    "app": () async => new Template(parsed: """<!DOCTYPE html>
<html lang='en'>

<head>
    <title>Bridge</title>
    <link rel='stylesheet' href='/app.css'>
    <script src='//use.typekit.net/dcz8uda.js'></script>
    <script>
        try {
            Typekit.load();
        } catch (e) {}
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
  <h3>
    ${message ?? 'Oops! Something went wrong!'}
    ${await (() async => (code != 200 && code != null) ? """
      <small>($code)</small>
    """ : "")()}</h3>

  
  ${await (() async => (Environment.isDevelopment && stackTrace != null) ? """
    <h6>$exception</h6>
    <pre class='stack-trace'>${$escape($instantiate(#Chain.forTrace, stackTrace).terse.toString())}</pre>
  """ : "")()}"""})}""", data: data),
    "index": () async => new Template(parsed: """${await $extends('app', {'content': """
<article>
  <h1>The Earth <br><i class="normal">The Starting Point</i></h1>

  <p class="lead">One night when I had tasted bitterness I went out on to the hill. Dark heather checked my feet. Below marched the suburban lamps.</p>

  <p>Windows, their curtains drawn, were shut eyes, inwardly watching the lives of dreams. Beyond the sea’s level darkness a lighthouse pulsed. Overhead, obscurity. I distinguished our own house, our islet in the tumultuous and bitter currents of the world. There, for a decade and a half, we two, so different in quality, had grown in and in to one another, for mutual support and nourishment, in intricate symbiosis. There daily we planned our several undertakings, and recounted the day’s oddities and vexations. There letters piled up to be answered, socks to be darned. There the children were born, those sudden new lives. There, under that roof, our own two lives, recalcitrant sometimes to one another, were all the while thankfully one, one larger, more <a href="http://ebooks.adelaide.edu.au/s/stapledon/olaf/star/chapter1.html#chapter1">conscious life</a> than either alone.</p>

  <h2>All This, Surely, Was Good <small>Some category</small></h2>

  <p>Yet there was bitterness. And bitterness not only invaded us from the world; it welled up also within our own magic circle. For horror at our futility, at our own unreality, and not only at the world’s delirium, had driven me out on to the hill.</p>
  <p>We were always hurrying from one little urgent task to another, but the upshot was insubstantial. Had we, perhaps, misconceived our whole existence? Were we, as it were, living from false premises? And in particular, this partnership of ours, this seemingly so well-based fulcrum for activity in the world, was it after all nothing but a little eddy of complacent and ingrown domesticity, ineffectively whirling on the surface of the great flux, having in itself no depth of being, and no significance? Had we perhaps after all deceived ourselves? Behind those rapt windows did we, like so many others, indeed live only a dream? In a sick world even the hale are sick. And we two, spinning our little life mostly by rote, seldom with clear cognizance, seldom with firm intent, were products of a sick world.</p>
  <p>Yet this life of ours was not all sheer and barren fantasy. Was it not spun from the actual fibres of reality, which we gathered in with all the comings and goings through our door, all our traffic with the suburb and the city and with remoter cities, and with the ends of the earth? And were we not spinning together an authentic expression of our own nature? Did not our life issue daily as more or less firm threads of active living, and mesh itself into the growing web, the intricate, ever-proliferating pattern of mankind?</p>

  <h3>I Considered “Us” With Quiet Interest</h3>

  <p>And a kind of amused awe. How could I describe our relationship even to myself without either disparaging it or insulting it with the tawdry decoration of sentimentality? For this our delicate balance of dependence and independence, this coolly critical, shrewdly ridiculing, but loving mutual contact, was surely a microcosm of true community, was after all in its simple style an actual and living example of that high goal which the world seeks.</p>

  <blockquote>
    <p>I reflected that not one of the visible features of this celestial and living gem revealed the presence of man. Displayed before me, though invisible, were some of the most congested centers of human population. There below me lay huge industrial regions, blackening the air with smoke. Yet all this thronging life and humanly momentous enterprise had made no mark whatever on the features of the planet. From this high look-out the Earth would have appeared no different before the dawn of man. No visiting angel, or explorer from another planet, could have guessed that this bland orb teemed with vermin, with world-mastering, self-torturing, incipiently angelic beasts. <small>— Olaf Stapledon, <cite title="Star Maker">Star Maker</cite></small></p>
  </blockquote>

  <p>The whole world? The whole universe? Overhead, obscurity unveiled a star. One tremulous arrow of light, projected how many thousands of years ago, now stung my nerves with vision, and my heart with fear. For in such a universe as this what significance could there be in our fortuitous, our frail, our evanescent community?</p>

  <h4>But Now Irrationally I Was Seized</h4>

  <p>With a strange worship, not, surely of the star, that mere furnace which mere distance falsely sanctified, but of something other, which the dire contrast of the star and us signified to the heart. Yet what, what could thus be signified? Intellect, peering beyond the star, discovered no Star Maker, but only darkness; no Love, no Power even, but only Nothing.</p>

  <h5>And Yet the Heart Praised</h5>

  <p>Impatiently I shook off this folly, and reverted from the inscrutable to the familiar and the concrete. Thrusting aside worship, and fear also and bitterness, I determined to examine more coldly this remarkable “us,” this surprisingly impressive datum, which to ourselves remained basic to the universe, though in relation to the stars it appeared so slight a thing.</p>

  <h6>Considered Even Without Reference to Our Belittling Cosmical Background</h6>

  <p>We were after all insignificant, perhaps ridiculous. We were such a commonplace occurrence, so trite, so respectable. We were just a married couple, making shift to live together without undue strain. Marriage in our time was suspect. And ours, with its trivial romantic origin, was doubly suspect.</p>

  <ul>
    <li>We had first met when she was a child</li>
    <li>Our eyes encountered</li>
    <li>She looked at me for a moment with quiet attention</li>
    <li>Even, I had romantically imagined, with obscure, deep-lying recognition
      <ul>
        <li>I, at any rate, recognized in that look</li>
        <li>So I persuaded myself in my fever of adolescence</li>
      </ul>
    </li>
    <li>My destiny</li>
  </ul>

  <p><strong>Yes!</strong> <em>How predestinate had seemed our union!</em> Yet now, in retrospect, how accidental. True, <del>of course</del>, that as a long-married couple we <kbd>^C</kbd> rather neatly, like <small>two close trees whose trunks</small> have grown upwards together as a single shaft, mutually distorting, but mutually supporting. <abbr title="abbreviation title">ABC</abbr></p>

  <ol>
    <li>The Diversity of Worlds</li>
    <li>Strange Mankinds</li>
    <li>Nautiloids</li>
    <li>The Earth
      <ul>
        <li>The Starting Point</li>
        <li>Earth Among the Stars</li>
      </ul>
    </li>
    <li>More Worlds</li>
  </ol>

  <p>Here's some code: <code>e = mc<sup>2</sup></code></p>

  <pre><code>And Some Poetry</code></pre>

  <dl>
    <dt>Coldly</dt>
    <dd>I now assessed her as merely a useful, but often infuriating adjunct to my personal life.</dd>
    <dt>We</dt>
    <dd>Were on the whole sensible companions.</dd>
    <dd>We left one another a certain freedom, and so we were able to endure our proximity.</dd>
    <dt>Such</dt>
    <dd>Was our relationship.</dd>
  </dl>

  <hr>

  <p class="quiet">
    <small>Text excerpt from <a href="http://ebooks.adelaide.edu.au/s/stapledon/olaf/star/"><i>Star Maker</i> by Olaf Stapledon</a></small>
  </p>
  </article>
"""})}
""", data: data),
    "partials.header": () async => new Template(parsed: """<header>
  <ul class="toolbar">
    <ul class="left">
      <li class="img-container">
        <img src="/img/logo.svg" alt="Bridge">
      </li>
    </ul>
    <ul class="right">
      ${(await Future.wait((Menu.items).map((item) async => """
        <li><a href="${item['url']}">${item['title']}</a></li>
      """))).join("")}</ul>
  </ul>
</header>""", data: data),
  };
}