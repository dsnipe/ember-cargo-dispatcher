`import DS from 'ember-data'`
`import EmberValidations from 'ember-validations'`

Organization = DS.Model.extend(EmberValidations.Mixin,
  name: DS.attr 'string'
  city: DS.attr 'string'
  street: DS.attr 'string'
  streetNum: DS.attr 'string'
  officeNum: DS.attr 'string'
  contactPerson: DS.attr 'string'
  contactPhone: DS.attr 'string'
)
Organization.reopen
  validations:
    name:
      presence: true
      length: { minimum: 2 }
    city:
      presence: true
    street:
      presence: true
    streetNum:
      presence: true

`export default Organization`
