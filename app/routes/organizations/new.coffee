`import Ember from 'ember'`

OrganizationsNewRoute = Ember.Route.extend
  model: ->
    @store.createRecord('Organization');

  actions:
    submit: ->
      @currentModel.save().then =>
        @transitionTo('organizations')

  resetController: (ctrl, isExiting, transition)->
    if isExiting and ctrl.model.get('isNew')
      ctrl.model.destroyRecord()

`export default OrganizationsNewRoute`
