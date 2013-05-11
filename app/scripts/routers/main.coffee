IndexView = require 'scripts/views/index'

class MainRouter extends Backbone.Router
    routes:
        '': 'index'

    index: ->
        index = new IndexView()

main = new MainRouter()
module.exports = main

