const { Given } = require('cucumber');
const { navigate } = require('../utilities/elementsCommonActions');

Given(/^I launch the "([^"]*)" site$/,
  { timeout: 10 * 3000 }, async (URL) => {
    await navigate(URL);
  });