# Making Cross-Platform Apps

The general consensus is that cross-platform apps are more trouble than they're worth in the long-run. Maintenance becomes increasingly difficult and your app will be slow to adopt new APIs in many cases. Additionally, there is the risk that whatever framework you're using will be abandoned, leaving you with massive technical debt.

As a native developer, your skillset is generally more valuable to employers and more transferrable to other projects. If you're deciding which family of languages to learn first, you should really consider native.

Here are some good articles that might discourage you from choosing cross platform:

- https://www.andrewnater.com/posts/the-cross-platform-myth/
- https://medium.com/airbnb-engineering/sunsetting-react-native-1868ba28e30a
- https://engineering.udacity.com/react-native-a-retrospective-from-the-mobile-engineering-team-at-udacity-89975d6a8102

Below, some of the pros and cons of choosing to use a cross-platform framework are weighed. But first, let's do some mythbusting.

### Common misconceptions, corrected

Cross-platform apps...

- are not "the future"
- can never truly replace native
- are not faster than native
- do not take less time to develop in the long run for most apps
- are not and cannot ever be "pixel perfect," UIs change all the time and have hidden details

### Cons

- Difficult to achieve a native-quality app
- Debugging is often difficult
- Build times have been reported as being worse overall
- Maintenance becomes difficult, costly, and time-consuming in the long run
- Difficult to for one interface to gracefully adapt to different devices
    - You will still have to write code for each platform if you want a *quality* experience
    - Users expect the platform’s aesthetic and interaction patterns to be applied consistently
- There is practically zero support for real device hardware from the cross platform toolkits (sensors, etc)
- Typically, only a percentage of your app will be cross-platform
    - Large amounts of bridging infrastructure will likely be required to enable engineers to work effectively

### Pros

- Costs of development can *sometimes* be lower, if your app is small or if you already know the language
- Often easy to get up and running and start building for multiple platforms
- You can rely on JS libraries and tools from the larger ecosystem if your framework is a JS framework
- Great for very specific types of apps (social networks, shopping apps, booking apps, etc)
