`import DS from 'ember-data'`

Pathway = DS.Model.extend {
  organization: DS.belongsTo 'organization'
  cargo: DS.belongsTo 'cargo'
  time: DS.attr 'date'
}

`export default Pathway`
