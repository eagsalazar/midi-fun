module.exports = class MIDIPlayer extends Backbone.Model

  initialize: (file) ->
    reader = new FileReader()
    reader.onloadend = @playMIDI
    reader.readAsDataURL(file)
    @player = MIDI.Player
    @player.timeWarp = 1

  loadFile: =>
    @player.loadFile(@midiFile, @player.start)

  setTempo: (newTempo) =>
    @player.timeWarp = newTempo
    @pause()
    @player.loadFile(@midiFile)
    @play()

  playMIDI: (e) =>
    @midiFile = e.target.result
    MIDI.loadPlugin @loadFile

  play: =>
    @player.resume()

  pause: =>
    @player.pause()

  playing: =>
    @player.playing

