`import { test, moduleForModel } from 'ember-qunit'`

get = Ember.get
set = Ember.set
model = {}

moduleForModel 'organization', 'Organization', {
  needs: ['service:validations',
          'ember-validations@validator:local/presence',
          'ember-validations@validator:local/length',]
}

test 'it exists', ->
  model = @subject()
  # store = @store()
  ok !!model

test 'falsy validations', ->
  store = @store()
  data = {
    name: ''
    city: 'some data'
    street: 'some data'
  }
  Ember.run =>
    model = store.createRecord('organization', data)
  equal(get(model, 'isValid'), false)
  deepEqual(get(model, 'errors.name'), ["can't be blank", "is too short (minimum is 2 characters)"])

test 'true validations', ->
  store = @store()
  data = {
    name: 'Super City'
    city: 'some data'
    street: 'some data'
    streetNum: '10'
  }
  Ember.run =>
    model = store.createRecord('organization', data)
  equal(get(model, 'isValid'), true)
