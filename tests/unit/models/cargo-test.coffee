`import { test, moduleForModel } from 'ember-qunit'`

get = Ember.get
set = Ember.set
model = {}

moduleForModel 'cargo', 'Cargo Model', {
  # Specify the other units that are required for this test.
  needs: [
    'model:item',
    'service:validations'
    'ember-validations@validator:local/presence'
  ]
}

test 'it exists', ->
  model = @subject()
  # store = @store()
  ok !!model

test 'item relationship', ->
  store = @store()
  Cargo = store.modelFor('cargo')
  rel = Em.get(Cargo, 'relationshipsByName').get('items')

  equal rel.key, 'items'
  equal rel.kind, 'hasMany'

test 'falsy validations', ->
  store = @store()
  data = {
    name: 'Super Cargo'
  }
  Ember.run =>
    model = store.createRecord('cargo', data)
  equal(get(model, 'isValid'), false)
  deepEqual(get(model, 'errors.items'), ["can't be blank"])

test 'pass validations', ->
  store = @store()
  data = {
    name: 'Super Cargo'
  }
  Ember.run ->
    item = store.createRecord('item', {name: '1', weight: '1', quantity: '1'})
    model = store.createRecord('cargo', data)
    model.get('items').addObject(item)
  equal(get(model, 'isValid'), true)
