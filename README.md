# Instagram Bot

> Want to increase your instagram Following?
> This tools can help you

Feel free to reach out to me to add more features

![demo2](demo2.png)

![demo](demo.png)

```
chromedriver --version
ChromeDriver 81.0.4044.69 (6813546031a4bc83f717a2ef7cd4ac6ec1199132-refs/branch-heads/4044@{#776})

google-chrome-stable --version
Google Chrome 81.0.4044.92
```

## Issues

* Always update pip before installtion
  * ` pip install --upgrade pip`
* Internet Connection Status: error
  * [disable instaggram site status checking](https://github.com/InstaPy/instapy-quickstart/issues/118)
* Cookie file not found, creating cookie... Login A/B test detected! Trying another string...
  * https://github.com/timgrossmann/InstaPy/issues/5351
* [Scroll seems to works on chrome](https://github.com/robotframework/SeleniumLibrary/pull/1083)
* StaleElementReferenceException: Message: stale element reference: element is not attached to the page document
  * On Focus Element
  * Generally this is due to the DOM being updated and you trying to access an updated/new element -- but the DOM's refreshed so it's an invalid reference you have..



```sh
kill -9 (pgrep firefox); python instagram-bot/quickstart.py --username abcd --password 1234

kill -9 (pgrep firefox);robot --variablefile vars.yaml --outputdir output instagram-bot/instagram.robot
```

### Findings

* Initall page is loaded with 4 articles
* Only 4 articles are active on page at a time before they are modified
* Structure your automation flow first, expect everything to fail.
  * Focus on debugging and locating Failure step quickly
*

### ToDos

* [ ] Determine is post is already liked?
* [ ] Repeat/Retry failed steps
* [ ] Debuggable, [Page Object Model Design Pattern](https://martinfowler.com/bliki/PageObject.html)
  * [DOM Traversal Flow](https://en.wikipedia.org/wiki/Document_Object_Model)
  * Overcome Repetition
* [ ] [Combine outputs](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#combining-outputs) from various deployments in postprocessing
  * When outputs are combined, a new top-level test suite is created so that test suites in the given output files are its child suites. This works the same way when multiple test data files or directories are executed, and also in this case the name of the top-level test suite is created by joining child suite names with an ampersand (&) and spaces. These automatically generated names are not that good, and it is often a good idea to use --name to give a more meaningful name:
* [ ] User **Cover Element** for debugging



#### @ Reach Me @

> I am always looking for Jobs ...

* [Github](https://github.com/avimehenwal/)
* [My Website](https://avimehenwal.in)
* [Twitter Handle](https://twitter.com/avimehenwal)
* [Facebook](https://www.facebook.com/avimehanwal)
* [LinkedIn](https://in.linkedin.com/in/avimehenwal)

<a href="https://www.buymeacoffee.com/F1j07cV" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-orange.png" alt="Buy Me A Coffee" style="height: 51px !important;width: 217px !important;" ></a>

 Spread Love :hearts: and not :no_entry_sign: hatred   [![Twitter Follow](https://img.shields.io/twitter/follow/avimehenwal.svg?style=social)](https://twitter.com/avimehenwal)