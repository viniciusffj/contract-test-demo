const pact = require('@pact-foundation/pact-node');
const chai = require('chai');
const path = require('path');
const expect = chai.expect;

describe('Contract Verification Verification', () => {
  const contractUrl = 'http://10.71.133.8:2222/pacts/provider/APIPago/consumer/CompreAquiExpress/latest'

  it('should validate the expectations of Matching Service', function(done) {
    this.timeout(10000);

    let opts = {
      providerBaseUrl: 'http://localhost:4000',
      pactUrls: [contractUrl]
    };

    const verifyPromise = pact.verifyPacts(opts)
    expect(verifyPromise).to.be.fulfilled;

    verifyPromise
      .then(output => {
        console.log('Pact Verification Complete!');
        console.log(output);
        done();
      }).catch(e => {
        console.log('Pact Verification Failed: ', e);
        done(e);
      });
  });
});
