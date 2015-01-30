`import Ember from 'ember'`

OrganizationsNewRoute = Ember.Route.extend
  model: ->
    @store.createRecord('Organization');

`export default OrganizationsNewRoute`
