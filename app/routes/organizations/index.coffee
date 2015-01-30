`import Ember from 'ember'`

OrganizationsNewRoute = Ember.Route.extend
  model: ->
    @store.find('organization')

`export default OrganizationsNewRoute`
