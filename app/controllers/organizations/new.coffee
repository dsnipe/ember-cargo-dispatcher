`import Ember from 'ember'`

OrganizationsNewController = Ember.Controller.extend
  title: 'New Organization'
  actions:
    submit: ->
      @model.save()
      console.log 'Saved!'

`export default OrganizationsNewController`
