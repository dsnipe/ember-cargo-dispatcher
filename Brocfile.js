/* global require, module */

var EmberApp = require('ember-cli/lib/broccoli/ember-app');
// var mergeTrees = require('broccoli-merge-trees');
// var pickFiles = require('broccoli-static-compiler');

var app = new EmberApp({
  outputPaths: {
    app: {
      css: {
        'app': '/assets/app.css'
      }
    }
  },
  sassOptions: {
    includePaths: [
      'bower_components/bootstrap-sass-official/assets/stylesheets/'
    ]
  }
});

app.import('bower_components/bootstrap-sass-official/assets/javascripts/bootstrap.js');

app.import('bower_components/bootstrap-sass-official/assets/fonts/bootstrap/glyphicons-halflings-regular.woff', {
  destDir: 'fonts/bootstrap/'
});

module.exports = app.toTree();
