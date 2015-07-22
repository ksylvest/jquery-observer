###
jQuery observe
Copyright 2014 Kevin Sylvestre
1.1.0
###

"use strict"

$ = jQuery

class Observer
  
  @settings:
    interval: 800

  constructor: (form, callback, settings = {}) ->
    @form = form
    @callback = callback
    @settings = $.extend {}, Observer.settings, settings
    @observe()

  observe: ->
    $(@form.elements).on 'change keypress', => 
      @modified = new Date()

    @every @settings.interval, =>
      @callback.call(@form) if @modified?
      delete @modified

  every: (interval, callback) ->
    setInterval callback, interval

$.fn.extend
  observe: (callback, options = {}) ->
    @each -> new Observer(this, callback, options)
