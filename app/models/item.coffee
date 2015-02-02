`import DS from 'ember-data'`
`import EmberValidations from 'ember-validations'`

Item = DS.Model.extend(EmberValidations.Mixin,
  name: DS.attr 'string'
  weight: DS.attr 'number'
  quantity: DS.attr 'number'
  cargo: DS.belongsTo 'cargo'
  totalWeight: (->
    @get('weight') * @get('quantity')
  ).property('quantity', 'weight')
  # Enable buttons if return null (valid model)
  isntValid: (->
    if @get('isValid') then null else true
  ).property('isValid')
)

Item.reopen
  validations:
    name:
      presence: true
    weight:
      presence: true
      numericality: true
    quantity:
      presence: true
      numericality: true

`export default Item`
