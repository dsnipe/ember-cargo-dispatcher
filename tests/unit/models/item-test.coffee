`import Em from 'ember'`
`import { test, moduleForModel } from 'ember-qunit'`

get = Ember.get
set = Ember.set
model = {}

moduleForModel 'item', 'Item model', {
  needs: ['model:cargo',
          'service:validations',
          'ember-validations@validator:local/presence',
          'ember-validations@validator:local/length']
}

test 'it exists', ->
  model = @subject()
  ok !!model

test 'falsy validations', ->
  store = @store()
  data = {
    name: ''
    weight: 11
    quantity: 12
  }
  Ember.run =>
    model = store.createRecord('item', data)
  equal(get(model, 'isValid'), false)
  deepEqual(get(model, 'errors.name'), ["can't be blank"])

test 'falsy validations', ->
  store = @store()
  data = {
    name: 'Some item'
    weight: 10
    quantity: 12
  }
  Ember.run =>
    model = store.createRecord('item', data)
  equal(get(model, 'isValid'), true)

test '#totalWeight', ->
  store = @store()
  data = {
    name: 'Some item'
    weight: 10
    quantity: 12
  }
  Ember.run =>
    model = store.createRecord('item', data)
  equal(get(model, 'totalWeight'), 120)
