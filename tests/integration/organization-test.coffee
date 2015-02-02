`import Ember from "ember"`
`import { test } from 'ember-qunit'`
`import startApp from '../helpers/start-app'`

App = {}

# Dont know how identify ember-forms inputs. Too much magic.
# Maybe later or never fix it

module 'An Integration test', {
  setup: ->
    App = startApp()
    # App.reset()
    App.injectTestHelpers()
  teardown: ->
    Ember.run(App, App.destroy)
}

test "On new organization page", ->
  visit('/organizations/new')
  andThen ->
    equal(find('h2:first').text(), 'New Organization')

test 'On index organization page', ->
  visit('organizations')
  andThen ->
    equal(find('h2:first').text(), 'Organizations')
