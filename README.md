# joice-queiroz - N26 Home Challenge
## Task 1 - Test Planning
### Monefy Test Cases 
Test cases focused on user stories:
1. The user wants better financial control, and want to get useful reports on what she expends;
2. The user wants to use what she gets as income to invest money;
3. The user experienced on Monefy that wants to get the Pro version;
4. The user buys a new smartphone and wants to backup/restore Monefy data

Also, scenarios from user's stories 1 and 2 should be prioritized since they cover the core functionality of Monefy, and a user can be retained by getting a good impression with a friendly UI/UX and no critical bugs.
#### Test cases designed for 1st story
* Add expense by tapping at the red button on the bottom screen
* Add expense by tapping on a specific category
* Add expense choosing money as payment type
* Add expense choosing card as payment type
* Change expense category, payment type, value, and note
* Add monthly budget amount
* Check balance for the current day 
* Check balance for the current week 
* Check balance for the current month 
* Check balance for the current year 
* Check balance for a specific day
#### Test cases designed for 2nd story
* Add income by tapping at the green button on the bottom screen
* Change income category, payment type, value, and note
* Transfer money from payment card to cash
#### Test cases designed for 3rd story
* Create new category
* Create an account for a new currency
* Create an account for a new payment type
* Change to dark theme
* Synchronize data with Dropbox
* Synchronize data with Google Drive
* Add passcode protection
#### Test cases designed for 4th story
* Create a data backup
* Restore a data backup
## Task 3 - API Automated Tests
### Setup the API playground (taken from [Best Buy Api Playground](https://github.com/bestbuy/api-playground/#getting-started))
* Make sure the NodeJS is installled in the local machine. Using Terminal/Command Prompt, run the command below, where it should present version 4 or newer:
```text
$ node -v
```
* To have BestBuy Api Playground running, run the following commands in the Terminal/Command Prompt:
```text
$ git clone https://github.com/bestbuy/api-playground/
$ cd api-playground
$ npm install
$ npm start
```
## Step 1:
Install:
* Ruby 2.5.5 and DevKit (https://rubyinstaller.org/downloads/)
* Bundler ($ gem install bundler);
## Step 2:
Clone project: 

    * $ git clone https://github.com/joicequeiroz/joice-queiroz.git
## Step 3:
After to clone project, go to the project root and execute $ bundle install

### Running automated test cases
#### Run all test cases
<blockquote>$ cucumber</blockquote>

#### Run tests for a specific functionality
Categories
    <blockquote>$ cucumber --tag @categories</blockquote>

Products
    <blockquote>$ cucumber --tag @products</blockquote>

Services
    <blockquote>$ cucumber --tag @services</blockquote>

Stores
    <blockquote>$ cucumber --tag @stores</blockquote>

Utilities
    <blockquote>$ cucumber --tag @utilities</blockquote>

#### Run tests cases with blocker severity
```text
$ cucumber --tag @severity_blocker
```
#### After tests are run, results are stored in .. \ joice-queiroz \ log \ report.html

### Test cases proposed for automation.
* **Products**
  * Create a new product
  * Creating a product without data for mandatory fields
  * Creating a product with negative values for integer fields
  * Creating a product with negative values for string fields
  * Creating a product without body
  * Research products
  * Research all products
  * Highest Priced Products
  * Product Name and Description Only
  * TVs with free shipping and price between $500 and $800
  * Update a products
  * Delete a products
* **Stores**
  * Create a new store
  * Creating a stores without data for mandatory fields
  * Creating a stores with negative values for string fields
  * Creating a stores without body
  * Research all Stores
  * Research the stores in Minnesota
  * Research the stores that sell Apple products
  * Research the stores Within ten Miles of Beverly Hills
  * Research a stores **Flaky
  * Update a stores
  * Delete a stores
* **Services**
  * Create a new service
  * Creating a services without data for mandatory fields
  * Creating a services with negative values for string fields
  * Creating a services without body
  * Research all services
  * Research Services per ID
  * Update a services
  * Delete a services
* **Categories**
  * Create a new category
  * Creating a categories without data for mandatory fields
  * Creating a categories with negative values for string fields
  * Creating a categories without body
  * Research all categories
  * Research categories by name
  * Research categories with TV in the name
  * Update a categories
  * Delete a categories
* **Utilities**
  * Check API version
  * Check Health

### Bugs found
Test Case | Expected Results | Actual Results | Severity
--- | --- | --- | ---
Create a new product | According to the documentation, the system will show status code equal "200" | The system has demonstrated status code identical "201" | Major 
Create a new store | According to the documentation, the system will show status code equal "200" | According to the documentation, the  system has demonstrated status code equal "201" | Major  | The system will show status code identical "200" | The system has demonstrated status code identical "201" | Major 
Create a new service | According to the documentation, the system will show status code equal "200" | The system has demonstrated status code identical "201" | Major 
Create a new category| According to the documentation, the system will show status code equal "200" | The system has demonstrated status code equal "201" | Major
Get categories by name | According to the documentation, the system will be shown the categories by name | The system has demonstrated status code equal "500" | **Blocker**