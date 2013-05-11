# Initialize Router
require 'scripts/routers/main'

$ ->
    # Initialize Backbone History
    Backbone.history.start pushState: yes

