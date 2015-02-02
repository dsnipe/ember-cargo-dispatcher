`import Ember from 'ember'`

CargosNewRoute = Ember.Route.extend {
  model: ->
    cargo: @store.createRecord('Cargo')
    item: @store.createRecord('Item')

  actions:
    submit: ->
      @controller.get('model.cargo').save().then =>
        @transitionTo('cargos')

    addItem: ->
      # TODO: refactor model getter
      if @controller.get('model.item.isValid')
        item = @controller.get('model.item')
        cargo = @controller.get('model.cargo.items')
        item.cargo = cargo
        cargo.addObject(item)
        @controller.set('model.item', @store.createRecord('Item'))
      else
        alert('Achtung!!!')
    deleteItem: (item)->
      item.destroyRecord()

  resetController: (ctrl, isExiting, transition)->
    if isExiting and ctrl.model.cargo.get('isNew')
      ctrl.model.cargo.destroyRecord()
}

`export default CargosNewRoute`
