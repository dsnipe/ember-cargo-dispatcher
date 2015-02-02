`import Ember from 'ember'`

OrganizationsNewRoute = Ember.Route.extend
  model: ->
    @store.find('organization')

  actions:
    removeOrganization: (org)->
      org.destroyRecord()

`export default OrganizationsNewRoute`
