MIDIPlayer = require 'scripts/models/midi_player'

module.exports = class IndexView extends Backbone.View
    el: 'body'

    events:
        "change [type=file]": "onMidiSelect"

    initialize: ->
        console.log 'index view'

    onMidiSelect: (event) =>
        @midiPlayer = new MIDIPlayer()
        file = event.currentTarget.files[0]
        reader = new FileReader()
        reader.onloadend = @midiPlayer.playMIDI
        reader.readAsDataURL(file)


