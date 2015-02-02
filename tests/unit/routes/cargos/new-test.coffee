`import { test, moduleFor } from 'ember-qunit'`

moduleFor 'route:cargos/new', 'CargosNewRoute', {
  # Specify the other units that are required for this test.
  # needs: ['ember-validations@validator:local/presence']
}

test 'it exists', ->
  route = @subject()
  ok route
