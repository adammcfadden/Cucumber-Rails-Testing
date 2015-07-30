## Cucumber Testing Example

###Description
A simple rails post creation app that uses cucumber testing.

###Setup

```
git clone https://github.com/adammcfadden/Cucumber-Rails-Testing.git
cd Cucumber-Rails-Testing/
bundle
rake db:create
rake db:migrate
rake db:test:prepare
```

###Testing 
For running all tests
```
cucumber
```
For testing specific tags
```
cucumber --tags @foo
```
For testing multiple tags at once(will return results that have **either** tag)
```
cucumber --tags @foo,@bar
```
For testing multiple tags at once(will return results that have **both** tag)
```
cucumber --tags @foo, --tags @bar
```
For denoting tags not to run
```
cucumber --tags ~@foo
```

**For more information about Cucumber testing visit <a href="https://github.com/cucumber/cucumber">Cucumber Github</a>**

##Author
Adam McFadden

##License
GPL v2

Copyright &copy; Adam McFadden 2015.
