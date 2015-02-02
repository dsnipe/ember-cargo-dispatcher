`import Ember from 'ember'`

CargosIndexRoute = Ember.Route.extend
  model: -> @store.find('cargo')
  
  actions:
    removeCargo: (cargo)->
      cargo.destroyRecord()

`export default CargosIndexRoute`
