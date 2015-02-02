`import DS from 'ember-data'`

Route = DS.Model.extend {
  date: DS.attr 'date'
  pathways: DS.hasMany 'pathway', {embedded: true}
}


`export default Route`
