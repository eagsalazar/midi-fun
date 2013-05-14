module.exports = class MIDIPlayer extends Backbone.Model

  initialize: (file) ->
    reader = new FileReader()
    reader.onloadend = @playMIDI
    reader.readAsDataURL(file)
    @player = MIDI.Player

  loadFile: =>
    @player.loadFile(@midiFile, @player.start)

  setTempo: (newTempo) =>
    @player.timeWarp = newTempo

  playMIDI: (e) =>
    @midiFile = e.target.result
    MIDI.loadPlugin @loadFile

  play: =>
    @player.resume()

  pause: =>
    @player.pause()

  playing: =>
    @player.playing

