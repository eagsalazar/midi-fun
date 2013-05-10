exports.config =
  # See docs at http://brunch.readthedocs.org/en/latest/config.html.
  conventions:
    ignored: /^(vendor.*\.less|.+node_modules.+|.+_.+\..+)$/
  modules:
    definition: false
    wrapper: false
  files:
    javascripts:
      joinTo:
        'js/app.js': /^app/
        'js/vendor.js': /^vendor/
      order:
        before: [
          'vendor/console-polyfill/index.js'
        ]

    stylesheets:
      joinTo:
        'css/app.css' : /^(app|vendor)/

    templates:
      joinTo:
        'js/templates.js': /.+\.jade$/

  plugins:
    jade:
      options:
        pretty: yes # Adds pretty-indentation whitespaces to output (false by default)

