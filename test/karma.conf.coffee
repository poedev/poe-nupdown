# Karma configuration
# http://karma-runner.github.io/0.12/config/configuration-file.html
# Generated on 2015-08-12 using
# generator-karma 1.0.0

module.exports = (config) ->
  config.set
    # base path, that will be used to resolve files and exclude
    basePath: ''

    # testing framework to use (jasmine/mocha/qunit/...)
    # as well as any additional frameworks (requirejs/chai/sinon/...)
    frameworks: [
      "jasmine"
    ]

    # list of files / patterns to load in the browser
    files: [
      '../server/public/js/libs.js',
      '../server/public/js/script.js',
      '../server/public/js/ng-app.js',
      '../test/sample-test/*.js',
    ],

    # list of files / patterns to exclude
    exclude: [
    ]

    # web server port
    port: 8080

    # level of logging
    # possible values: LOG_DISABLE || LOG_ERROR || LOG_WARN || LOG_INFO || LOG_DEBUG
    logLevel: config.LOG_INFO

    # Start these browsers, currently available:
    # - Chrome
    # - ChromeCanary
    # - Firefox
    # - Opera
    # - Safari (only Mac)
    # - PhantomJS
    # - IE (only Windows)
    browsers: [
      "Chrome",
      "Chrome_without_security"
    ]

    customLaunchers: {
      Chrome_without_security: {
        base: 'Chrome',
        falgs: ['--disable-web-security']
      }
    }

    # Which plugins to enable
    plugins: [
      "karma-phantomjs-launcher",
      "karma-chrome-launcher",
      "karma-jasmine",
      "karma-coffee-preprocessor"
    ]

    # enable / disable watching file and executing tests whenever any file changes
    autoWatch: true

    # Continuous Integration mode
    # if true, it capture browsers, run tests and exit
    singleRun: false

    colors: true

    preprocessors: '**/*.coffee': ['coffee']

    # Uncomment the following lines if you are using grunt's server to run the tests
    # proxies: '/': 'http://localhost:9000/'
    # URL root prevent conflicts with the site root
    # urlRoot: '_karma_'
