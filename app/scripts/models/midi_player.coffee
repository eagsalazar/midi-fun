module.exports = class MIDIPlayer extends Backbone.Model

  playFile: =>
    @player = MIDI.Player
    @player.timeWarp = 0.5
    @player.loadFile(@midiFile, @player.start)

  playMIDI: (e) =>
    @midiFile = e.target.result
    MIDI.loadPlugin @playFile
