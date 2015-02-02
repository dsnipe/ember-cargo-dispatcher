`import DS from 'ember-data'`
`import EmberValidations from 'ember-validations'`

# Reset forms inputs with errors when record was deleted
`import EmberFormMixin from 'ember-idx-forms/mixins/in_form'`
`import EmberFormGroupComponent from 'ember-idx-forms/group'`

EmberFormMixin.reopen
  model: (->
    @get('form.model')
  ).property('form', 'form.model')

EmberFormGroupComponent.reopen
  canShowErrorsObserver: (->
    @set('canShowErrors', false);
  ).observes('form', 'form.model')

# ^^^ Not sure where to place this patch ^^^


Cargo = DS.Model.extend(EmberValidations.Mixin,
  name: DS.attr 'string'
  items: DS.hasMany 'item', {embedded: true}
  weight: (->
    total = 0
    @get('items').forEach (item)->
      total += item.get('totalWeight')
    total
  ).property('items')
  # Enable buttons if return null (valid model)
  isntValid: (->
    if @get('isValid') then null else true
  ).property('isValid')
)

Cargo.reopen
  validations:
    name:
      presence: true
    items:
      presence: true

`export default Cargo`
