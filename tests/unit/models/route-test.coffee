`import { test, moduleForModel } from 'ember-qunit'`

moduleForModel 'route', 'Route', {
  needs: ['model:organization', 'model:cargo', 'model:item', 'model:pathway']
}

test 'it exists', ->
  model = @subject()
  # store = @store()
  ok !!model
