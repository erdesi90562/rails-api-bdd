[![General Assembly Logo](https://camo.githubusercontent.com/1a91b05b8f4d44b5bbfb83abac2b0996d8e26c92/687474703a2f2f692e696d6775722e636f6d2f6b6538555354712e706e67)](https://generalassemb.ly/education/web-development-immersive)

# Behavior-Driven Development of Rails APIs

We'll answer the following questions in this talk.

-   Why should you care about testing?
-   How do you know what to test?
-   What is the purpose of a feature test?
-   What is the purpose of a unit test?

Tests *limit* what we have to debug. For instance, if we have all green, passing
tests, we know that when we deploy to Heroku our code isn't the problem, rather
an issue with Heroku. Passing tests limits the types of debugging you have to
do.

## Prerequisites

-   [ga-wdi-boston/rails-api](https://github.com/ga-wdi-boston/rails-api)
-   [ga-wdi-boston/rails-activerecord-crud](https://github.com/ga-wdi-boston/rails-activerecord-crud)

## Objectives

By the end of this lesson, students should be able to:

-   Develop a Rails API using outside-in, behavior-driven testing.
-   Make wireframes to drive user stories.
-   Drive behavior specification with user stories.
-   Write automated CRUD request specs with RSpec.
-   Drive routing, model, and controller specs using request specs.

## Preparation

1.  [Fork and clone](https://github.com/ga-wdi-boston/meta/wiki/ForkAndClone)
    this repository.
1.  Install dependencies with `bundle install`.

## Outside-In Testing

![Test Cycle](http://jakegoulding.com/images/blog/bdd-cycle.png)

### Feature Tests

Feature tests are for catching regressions/bugs. Features break less because
they're higher level. Features test user experience. Feature tests document
workflow within the app. Feature tests tell you what's missing, and drive each
step of the development process.

### Unit Tests

Unit tests drive implementation and break more often, but they're smaller in
scale and faster to execute. Unit tests test developer experience. Unit tests
don't break down the problem into smaller, they give you the confidence that the
smallest pieces work as expected. Unit tests document your code base.

Both of these tests provide *documentation* of your code. Writing tests makes
refactoring easy because we can change one thing and see how it affects the
entire system. After each change in the code we run our unit tests to confirm
our expectations.

## Developer Workflow

Use feature tests to drive your unit tests, and your unit tests to drive your
code. You'll want to save and commit your work often during development. We
suggest commiting:

-   After passing unit tests.
-   After passing a feature.
-   After refactoring and passing all tests.

You can push when you're done passing a feature. You should **always run your
tests** before you commit/push your work.

## Code Along: Write Article Features

We'll start with a request spec. Request specs perform a similar job to `curl`:
they emulate testing your API from the client's point-of-view.

Fail request specs will drive creating routing specs. Routing specs will drive
creating controller specs. Finally, controller specs will drive creating model
specs. Once we have all these smaller tests (units) passing, the feature spec
(request spec) should pass automatically!

Let the tests tell you what to do next, and you'll never have to think about
your next task. It helps us get in "the zone"!

![in-the-zone](https://cloud.githubusercontent.com/assets/388761/13177815/7ed80d26-d6e9-11e5-8cf8-56d896cd0fbe.gif)

## Lab: Write Comment Features

Pair with a partner to create another resource (Comments) together using the
testing process demo'ed by the instructor. Comments should be a CRUD resource
(seven controller actions, five feature scenarios). Write your features one at a
time, and use failing features to drive unit tests. Use failing unit tests to
drive code. As you pass units, evenutally the feature will pass; this means you
can write your next feature. Continue until all your features and units are
written and passing (approximately 40 tests comments).

## Bonus Challenge

If you're looking for extra challenge or practice once you've completed the
above, try the following:

-   Create a voting feature for articles using outside-in testing.

    This will likely be a modification of a resource (rather than creating a new
    resource) with different controller actions than you're used to (perhaps a
    `up` and `down` actions instead of `show` or `index`). Think about what it
    means to vote something, and how you might test it. Start by sketching out
    page flow on paper. Try to outline your work at a high level before you
    start testind and coding.

-   Make comments have many comments. Comments can be nested, or `Comment
    has_many :comments`.
-   Implement voting on **both** comments and articles.

## Additional Resources

-   [RSpec Rails on Github](https://github.com/rspec/rspec-rails)
-   [How I learned to test my Rails Applications, series](http://everydayrails.com/2012/03/12/testing-series-intro.html)
-   [Better Spec](http://betterspecs.org/)
-   [Rspec Docs from Relish](https://relishapp.com/rspec)
-   [A great example of outside-in testing from Ruby Tapas](http://everydayrails.com/2014/01/15/outside-in-example-ruby-tapas.html)
-   [#275 How I Test - RailsCasts](http://railscasts.com/episodes/275-how-i-test)
-   [How We Test Rails Applications](http://robots.thoughtbot.com/how-we-test-rails-applications)

## [License](LICENSE)

Source code distributed under the MIT license. Text and other assets copyright
General Assembly, Inc., all rights reserved.
