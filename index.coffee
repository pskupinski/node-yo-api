request = require "request"

class Yo
  constructor: (@token, opts = {}) ->
    throw "token must be set" unless @token?

    {@base} = opts
    @base or= "http://api.justyo.co"

  yoall: (cb) ->
    request.post "#{@base}/yoall/", form: { api_token: @token }, cb
    null

  yo: (username, cb) ->
    request.post "#{@base}/yo/", form: { username: username, api_token: @token }, cb
    null

module.exports = Yo
