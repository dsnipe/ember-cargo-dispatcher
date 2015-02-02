`import Ember from 'ember'`

CargosNewController = Ember.Controller.extend
  isItems: (->
    @get('model.cargo.items').length > 0
  ).property('model.cargo.items')

`export default CargosNewController`
