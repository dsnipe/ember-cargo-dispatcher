`import DS from 'ember-data'`;

FirebaseAdapter = DS.FirebaseAdapter.extend
  firebase: new window.Firebase("https://shining-torch-7503.firebaseio.com")

`export default FirebaseAdapter`
