MIDIPlayerView = require 'scripts/views/midi_player'

module.exports = class IndexView extends Backbone.View
  el: 'body'

  initialize: ->
    console.log 'index view'
    new MIDIPlayerView()

