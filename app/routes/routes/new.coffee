`import Ember from 'ember'`

RoutesNewRoute = Ember.Route.extend
  model: ->
    Ember.RSVP.hash
      route: @store.createRecord('route')
      organizations: @store.find('organization')
      cargos: @store.find('cargo')

  actions:
    submit: ()->
      route = @currentModel.route
      if @controller.routeDate == undefined or route.get('pathways.length') == 0
        return  alert('Something wrong with world...')
      route.set('date', @controller.routeDate.toDate())
      route.save().then =>
        @transitionTo('routes')
    addPathway: (selectedCargo, selectedOrg, wpTime)->
      if selectedCargo and selectedOrg
        pw = @store.createRecord('pathway', {
              organization: selectedOrg
              cargo: selectedCargo
              time: wpTime
            })
        @currentModel.route.get('pathways').addObject(pw)
      else
        alert('Hey, select something!')
    removePathway: (pw)->
      pw.destroyRecord()

`export default RoutesNewRoute`
