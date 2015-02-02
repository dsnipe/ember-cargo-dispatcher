`import Ember from 'ember'`

RoutesIndexRoute = Ember.Route.extend
  model: ->
    @store.find('route')

  actions:
    removeRoute: (el)->
      el.destroyRecord()

`export default RoutesIndexRoute`
