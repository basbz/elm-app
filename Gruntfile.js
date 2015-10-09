module.exports = function(grunt) {
  // Project configuration.
  grunt.initConfig({
    elm: {
      compile: {
        files: {'dist/elm.js': 'src/elm/App.elm'}
      }
    },

    watch: {
      scripts: {
        files: 'src/elm/*.elm',
        tasks: ['elm'],
      },
    },

    connect: {
      server: {
        options: {
          port: 8000,
          keepalive: true
        }
      }
    }
  });

  grunt.loadNpmTasks('grunt-elm');
  grunt.loadNpmTasks('grunt-contrib-connect');
  grunt.loadNpmTasks('grunt-contrib-watch');
};
