###
jQuery observe
Copyright 2014 Kevin Sylvestre
1.1.0
###

(($) ->
  'use strict'
  Observer = undefined
  Observer = do ->
    `var Observer`

    Observer = (form, callback, settings) ->
      if settings == null
        settings = {}
      @form = form
      @callback = callback
      @settings = $.extend({}, Observer.settings, settings)
      @observe()
      return

    Observer.settings = interval: 800

    Observer::observe = ->
      $(@form.elements).on 'change keypress', ((_this) ->
        ->
          _this.modified = new Date
      )(this)
      @every @settings.interval, ((_this) ->
        ->
          if _this.modified != null
            _this.callback.call _this.form
          delete _this.modified
      )(this)

    Observer::every = (interval, callback) ->
      setInterval callback, interval

    Observer
  $.fn.extend observe: (callback, options) ->
    if options == null
      options = {}
    @each ->
      new Observer(this, callback, options)
  return
) jQuery
