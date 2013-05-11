module.exports = class MIDIPlayer extends Backbone.Model
  initialize: ->
    console.log 'initializing midi player'
    @player = MIDI.Player

  playFile: =>
    @player.timeWarp = 1

  playMIDI: (e) =>
    @midiFile = e.target.result
    @player.loadFile(@midiFile, @player.start)
    # MIDI.loadPlugin
    #   soundFontUrl: "./soundfont/"
    #   callback: @playFile


