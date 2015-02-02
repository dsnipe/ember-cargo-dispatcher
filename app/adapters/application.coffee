`import DS from 'ember-data'`
# `import config from './config/environment'` # for some reason it break integration test in include

FirebaseAdapter = DS.FirebaseAdapter.extend
  firebase: new window.Firebase("https://shining-torch-7503.firebaseio.com")

`export default FirebaseAdapter`
