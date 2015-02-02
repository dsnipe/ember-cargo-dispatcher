`import Ember from 'ember'`

ItemsNewRoute = Ember.Route.extend
  actions:
    submit: ->
      @currentModel.save().then ->
        console.log 'Item saved!'

  resetController: (ctrl, isExiting, transition)->
    if isExiting and ctrl.model.get('isNew')
      ctrl.model.destroyRecord()

`export default ItemsNewRoute`
