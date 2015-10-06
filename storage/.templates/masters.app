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
