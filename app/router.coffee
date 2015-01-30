`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend
  location: config.locationType

Router.map ->
  @resource 'cargos', ->
    @route 'new'
  @resource 'organizations', ->
    @route 'new'
    @route 'edit'
  # @route 'AddressesIndexRoute'
  @route 'organizations/new'

`export default Router`
