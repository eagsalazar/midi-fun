MIDIPlayerModel = require 'scripts/models/midi_player'

module.exports = class PlayerView extends Backbone.View
  el: '#player'

  events:
    "change [type=file]": "onMidiSelect"
    "mouseup [type=range]:not(:disabled)": "onTempoChange"
    "click button": "onPlayStateChange"

  initialize: ->
    console.log 'player view'

  onTempoChange: (event) =>
    newTempo = event.currentTarget.valueAsNumber
    @midiPlayer.setTempo(newTempo)

  onMidiSelect: (event) =>
    file = event.currentTarget.files[0]
    @enableInputs()
    @midiPlayer = new MIDIPlayerModel(file)

  enableInputs: =>
    $('input, button').removeAttr('disabled', 'disabled')

  onPlayStateChange: (event) =>
    $target = $(event.currentTarget)
    $target.toggleClass('play')
    if $target.hasClass('play')
      @midiPlayer.play()
      $target.text('Pause')
    else
      @midiPlayer.pause()
      $target.text('Play')

