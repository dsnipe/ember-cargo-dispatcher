`import Ember from 'ember'`

CargosIndexController = Ember.ArrayController.extend
  totalWeight: (->
    result = 0
    @model.forEach (el)->
      result += el.get('weight')
    result
  ).property('model.@each.weight')

`export default CargosIndexController`
