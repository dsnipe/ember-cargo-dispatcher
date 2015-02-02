`import Ember from 'ember'`

ItemsNewController = Ember.Controller.extend
  model: ->
    @store.createRecord('Item')

`export default ItemsNewController`
