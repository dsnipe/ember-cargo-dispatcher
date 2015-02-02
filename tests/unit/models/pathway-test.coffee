`import { test, moduleForModel } from 'ember-qunit'`

moduleForModel 'pathway', 'Pathway', {
  # Specify the other units that are required for this test.
  needs: ['model:organization', 'model:cargo', 'model:item']
}

test 'it exists', ->
  model = @subject()
  # store = @store()
  ok !!model
