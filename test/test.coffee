global.Promise = require 'bluebird'
chai = require('chai');
chai.should();
chaiAsPromised = require("chai-as-promised");
chai.use(chaiAsPromised)

promiser = ->
  new Promise (resolve, reject)->
    resolve(4)
    
describe 'sample', ->
  it "should have a stack trace", ->
   promiser().should.eventually.equal 5
