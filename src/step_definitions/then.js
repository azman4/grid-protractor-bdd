const { Then } = require('cucumber');
const { enterKeys, verifyElementIsDisplayed, verifyText, verifyElementIsNotPresent } = require('../utilities/elementsCommonActions');

Then(
  /^I enter "([^"]*)" in the "([^"]*)" field$/,
  { timeout: 10 * 1000 },
  async (textKey, textboxField) => {
    await enterKeys(textboxField, textKey);
  }
);

Then(
  /^I should see "([^"]*)" (?:textBox|field|button|link|icon|arrow|label|tab)$/,
  { timeout: 10 * 1000 },
  async (elementKey) => {
    await verifyElementIsDisplayed(elementKey);
  }
);

Then(
  /^I should see "([^"]*)" value in "([^"]*)" field$/,
  { timeout: 10 * 1000 },
  async (expectedText, locatorName) => {
    await verifyText(expectedText, locatorName);
  }
);

Then(
  /^I should not see "([^"]*)" (?:textBox|field|button|link|icon|arrow|label|tab)$/,
  { timeout: 10 * 1000 },
  async (elementKey) => {
    await verifyElementIsNotPresent(elementKey);
  }
);