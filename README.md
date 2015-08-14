#iOS Programming FAQ

This FAQ has been forked from [this repository](https://github.com/programmingthomas/FAQ). So giving the credit where credit is due - thanks u/ProgrammingThomas!

This FAQ should receive occasional updates from [its own repository](https://github.com/riosprogramming/FAQ). So feel free to create pull requests to update/expand this FAQ.

##Basics

The most valuable source of information available to iOS Developers is [Apple's Developer Library](https://developer.apple.com/library/ios/navigation/). This contains thousands of documents explaining every single function in the SDK, hundreds of sample applications and several years of WWDC videos. If you've got a problem, this should always be the first place that you should look.

##Prerequisites

###Do I need a Mac?

Yes.

###But I heard that I can use technology X to do iOS development on Windows/Linux/Google Glass.

Irrespective of what you use to write your app, you will still need Xcode on a Mac to compile your app and submit it to the App Store.

###Where can I get the developer tools?

You can download Xcode from the [Mac App Store](https://itunes.apple.com/us/app/xcode/id497799835?mt=12). You can also download the [Xcode betas](https://developer.apple.com/xcode/downloads/) if you're a registered developer (you don't need to be a paid member).

###Which Mac should I get?

Depends what your budget is. Any Mac that can run the latest version of OS X and has more than 4GB of RAM will do. A Mac mini or MacBook Air will suffice.

###Is Xcode usable on a MacBook?

Xcode demands a lot of screen space, especially when editing storyboards. It is, however, perfectly usable on a MacBook display, even the 11" MacBook Air. If you've got a retina MacBook Pro you can change the display's resolution so that you get more screen space, which can be very useful when editing storyboards.

###Do I need an iOS device?

Yes, it's imperative that you test your app on a real device before you submit it to the App Store. Besides, you'll probably want to get a feel for how other iOS apps work before you write one.

###Which iOS device?

Provided that you can run iOS 8 you will be fine. This includes the iPod touch 5G, iPhone 4S+ and iPad 2+. If you're tight on budget then an iPad Mini with Retina Display or an iPod touch is the best option.

###Do I have to pay $99 for the developer license to get my app on the App Store?

Yes, but you can test your app on your own devices for free, as of Xcode 7 and iOS 9.

###So you're saying that I need to buy a Mac, iOS device and developer license?

Yes.

###Where can I find good courses to get me started?

N.B. These are not websites with individual tutorials, but online courses that you work through 'lesson by lesson'. Some of these may also charge money.

* [Developing iOS 7 apps for iPhone and iPad](https://itunes.apple.com/en/course/developing-ios-7-apps-for/id733644550) by Stanford
* [Developing iOS 8 apps with Swift by Stanford](https://itunes.apple.com/hk/course/developing-ios-8-apps-swift/id961180099)
* [Complete iOS 8 and Swift course](https://www.udemy.com/complete-ios-developer-course/) by Udemy
* [iOS tutorials on Lynda](http://www.lynda.com/iOS-training-tutorials/413-0.html)

##Tools

###Is PaintCode any good?

Yes - its great! Opacity and Opacity Express are cheaper alternatives that also export Objective-C rendering code, and I find the vector editor in Opacity is better. However, only use PaintCode if it is going to save you time and resources - if you aren't using much beyond the default iOS icons or you don't have dynamic graphics you probably don't need it.

###Should I use AppCode or Xcode?

Start out with Xcode, even if you've used JetBrains products before. Xcode contains all the tools you need to build an iOS app, but AppCode contains a lot of great extra features. For example, if you need strong refactoring support then you should give AppCode a go.

##SDK

###Where can I find some great examples of Objective-C/Swift code?

* [NSHipster](http://nshipster.com)
* [objc.io](http://objc.io)
* [Big Nerd Ranch](https://www.bignerdranch.com)

###Do I have to use storyboards?

No, you can alternatively use XIB files or generate your user interface in code. However, if you've got a small app storyboards can be very useful for visualising the structure and flow of the app.

###What should I use to store my app's data?

The iOS SDK includes:

* **Plist files**. If you are storing small amounts of non-complex data structures use plist files. Array and dictionary collection classes as well as NSData support writing to files with a single line of code.
* **Core Data**. A framework that provides a generalised way of storing your object graph in SQLite or XML files. For a lot of  apps this is the good solution because you are able to take advantage of `NSFetchedResultsController` to make your table/collection views really slick and update automatically. Unlike other technologies Core Data has a very strict [concurrency model](https://developer.apple.com/library/prerelease/ios/documentation/Cocoa/Conceptual/CoreData/Concurrency.html), which you must know about before you get started, as it can cause issues down the line.
* **NSUserDefaults**. Don't store your object graph in NSUserDefaults, as this is a simple key-value store that is great for storing settings. Do not store sensitive data such as credentials, OAuth tokens or in-app purchase receipts on NSUserDefaults - use [Keychain](https://developer.apple.com/library/ios/documentation/Security/Conceptual/keychainServConcepts/02concepts/concepts.html) for this instead.
* **SQLite**. Core Data is based on SQLite, which is the most common database used in iOS apps. SQLite offers superb performance, has very low memory usage, and is well supported. It has a C based API, so please read the comments below on third-party wrappers
* **CloudKit**. Available for iOS 8+ and OS X 10.10+, CloudKit stores user's data in iCloud either publicly or privately. A JavaScript API also exists for it, which allows you to build a web app that partners with your iOS app

Third party options

* **[FMDB](https://github.com/ccgus/fmdb)**. A SQLite wrapper that works with both Objective-C and SQLite. Instead of letting Core Data manage your model objects you can create your own model objects from the results of SQL queries. This means that you can use your own concurrency model (although FMDatabaseQueue is a super easy solution to thread safety). If you're interested in something somewhere between FMDB and Core Data you might want to try Marco Arment's [FCModel](https://github.com/marcoarment/FCModel), which is based off of Brent Simmons' description of [how he uses FMDB](http://www.objc.io/issue-4/SQLite-instead-of-core-data.html).
* **[Realm](https://realm.io)** is a 'mobile first database' and aims to reduce the workload of the developer. It fully supports concurrency and in some cases may offer better performance than SQLite based frameworks
* **[Parse](https://parse.com)** is an alternative to CloudKit from Facebook, and supports many of the same features, but supports other mobile platforms. Again, the user's data is not stored on the device

###What frameworks should I use for my game?

* **[Unity](https://unity3d.com)** allows you to write cross platform 2/3D games in C# or JavaScript. It provides the vast majority of the tools that you need to get started, and is appropriate for most iOS games
* **[Unreal Engine](https://www.unrealengine.com/what-is-unreal-engine-4)** offers a free alternative to Unity, but you have to pay a 5% royalty fee. Like Unity you can port your games to a variety of platforms
* **SpriteKit** is a framework for iOS 7+ and OS X 10.9+ that allows for the development of sprite based 2D games in Xcode. If you aren't bothered about platform lock in and you want to develop a 2D game then this is probably your best bet
* **SceneKit** is in OS X 10.8+ and iOS 8+. It can integrate with SpriteKit and hugely simplifies the amount of work needed to get 3D graphics on the screen (compared to OpenGL or Metal). If your developing a casual 3D game then SceneKit is a great option
* **OpenGL/Metal** are the low-level APIs available on iOS for 3D graphics. Most developers will not need to use Metal as this is primarily targeted at game engine developers (and requires a lot more work to do basic 3D graphics). OpenGL is now reasonably easy to get started with thanks to GLKit (iOS 5+) but you still have to do a lot of C and manual memory management. For most casual games SpriteKit or SceneKit are better solutions, and for more complex games it will be easier to use a ready made engine like Unity. However, OpenGL is a good way of learning how 3D graphics work
* **Cocos2D** is a framework similar to SpriteKit (it allows you to develop 2D games in Objective-C) however has the benefit of being cross platform. Cocos2D is a little older in its API style than SpriteKit, however has a wealth of tutorials and documentation available for it

**I would quite like to have a list here of games that use each framework**

###Where can I get good advice?

* [StackOverflow](http://stackoverflow.com/questions/tagged/ios)
* [Apple Developer Forums](https://devforums.apple.com/index.jspa)
* [NSHipster](http://nshipster.com)
* [objc.io](http://objc.io)
* [Big Nerd Ranch](https://www.bignerdranch.com)
* [/r/iosprogramming](https://reddit.com/r/iosprogramming)

###Do I need to support iOS 6?

No. Currently around 90% of all iOS devices are on iOS 7 or higher, and by Spring 2015 it will likely be a similar figure for iOS 8. You'll miss out on using the latest APIs and you'll likely have to write a lot of additional code in order to properly support iOS 6. The only major reason to support versions earlier than iOS 7 is if you are developing for a specific audience (such as schools) that may have older devices (such as the iPad 1).

Here's a [great list of stats about iOS versions](https://david-smith.org/iosversionstats/).

###How do I store app settings?

[NSUserDefaults](https://developer.apple.com/library/mac/documentation/Cocoa/Reference/Foundation/Classes/NSUserDefaults_Class/index.html) acts like a persistent dictionary. It is trivial to [register default settings](https://developer.apple.com/library/ios/documentation/Cocoa/Reference/Foundation/Classes/NSUserDefaults_Class/index.html#//apple_ref/occ/instm/NSUserDefaults/registerDefaults:), adapt your code to [sync via iCloud](https://developer.apple.com/library/ios/documentation/Cocoa/Conceptual/UserDefaults/StoringPreferenceDatainiCloud/StoringPreferenceDatainiCloud.html), or [subscribe to settings changes](http://stackoverflow.com/a/1141404/871586).

##Common tasks

###How can I change my apps' font?

You'll need to use [UIAppearance](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIAppearance_Protocol/):


    // AppDelegate.swift
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        let avenir = UIFont(name: "Avenir", size: UIFont.systemFontSize())!
        UILabel.appearance().font = avenir
        UINavigationBar.appearance().titleTextAttributes = [NSFontAttributeName: avenir]
        return true
    }

###How can I request some JSON from the web?


    //Standard library request to http://httpbin.org
    let session = NSURLSession.sharedSession()
    
    //Prepare the request
    let url = NSURL(string: "http://httpbin.org/get")!
    let request = NSURLRequest(URL: url)
    
    //Prepare the data task
    let task = session.dataTaskWithRequest(request, completionHandler: { (data, response, error) -> Void in
        //Warning: this closure is not executed on the main thread, so don't update the UI in here!
        let httpResponse = response as! NSHTTPURLResponse
        if httpResponse.statusCode == 200 {
            let json = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.allZeros, error: nil) as! NSDictionary
            println(json)
            println(json["url"]!)
        }
    })
    
    //Begin the task
    task.resume()

`NSURLSession` was introduced in iOS 7 and OS X Mavericks. It provides a reasonably easy way to do concurrent network requests, however you may wish to use [AFNetworking](https://github.com/AFNetworking/AFNetworking) instead as this can reduce the amount of code you have to write:


    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager GET:@"http://httpbin.org/get" parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        // Response object is an NSDictionary, like in the previous example
        NSLog(@"JSON: %@", responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        //Handle the error case
        NSLog(@"Error: %@", error);
    }];


###I want to build a client app for web service X. How do I get started?

Firstly, you need to confirm that you can legally access the data and that the service provider is OK with you making the app. Secondly, you need to confirm that the service has an API of some sort that you can use. This may be anything from a JSON/XML REST API to a full iOS SDK. If it doesn't, you may be able to scrape HTML but this will be very unreliable as your app would break if the page layout changed.

###My UITextView doesn't scroll properly on iOS 7.

Neither does mine. PSPDFKit has a [fix for it though](http://petersteinberger.com/blog/2014/fixing-uitextview-on-ios-7/). However, this is now resolved with iOS 8.

##Language

In general, the programming language you work in is only half of the challenge of learning to build an app. The other, more important half, is the frameworks. Often it is easiest to learn to build an app in Objective-C/Swift because the vast majority of documentation, tutorials and support are currently written for Objective-C/Swift. Therefore it is often easier to learn the basics with Objective-C/Swift before applying them in the language of your choice.

If you're considering a non-Apple language (i.e. not Objective-C or Swift), you probably need to consider that the learning curve will be greater, even if you're already familiar with the language. This is because you will have to learn Cocoa Touch, the framework, as well as the various patterns that it uses. These patterns (delegation, for example) may not be familiar in your language of choice, so you will have to adapt to using them whereas they will come more naturally if you learn them in Objective-C or Swift.

###Should I learn Objective-C or Swift first?

TL;DR Swift.

For programmers at any level Swift is easier to learn. The language is small, concise and will be familiar to people that have worked in C-like languages before. But you mustn't dismiss Objective-C.

The majority of iOS development tutorials cover using Cocoa Touch frameworks rather than the language. Everything written pre-June 2014 will be in Objective-C, so any programmer coming to the platform should still be familiar with it.

There is a [summary of common patterns](https://github.com/programmingthomas/equivalent) in both languages to make it easier for beginners to translate between the two.

###Can I write an iOS app in JavaScript?

Yes, with [PhoneGap](http://phonegap.com) or [Appcelerator](http://www.appcelerator.com/titanium/). If you're coming from a React background, consider [React Native](https://facebook.github.io/react-native/).

###Can I write an iOS app in Ruby?

Yes, with [RubyMotion](http://www.rubymotion.com).

###Can I write an iOS app in Java?

Yes, with [XMLVM](http://www.xmlvm.org/iphone/).

###Can I write an iOS app in Python?

You can write games in Python using [Kivy](http://kivy.org/#home). You can also write and run Python on your iOS device with [Pythonista](http://omz-software.com/pythonista/).

###Should I write my app with Xamarin?

If you are targeting multiple platforms or the majority of your app's code is 'business logic' then Xamarin may be a really good option, especially if you are already familiar with C#.

###Is there an easy reference for Objective-C block syntax?

<http://fuckingblocksyntax.com> or <http://goshdarnblocksyntax.com>.

###Is there an easy reference for Swift closure syntax?

<http://fuckingclosuresyntax.com> or <http://goshdarnclosuresyntax.com>.

###Why do Foundation classes start with NS?

Objective-C doesn't support namespaces, so all classes are prefixed with the framework or developer abbreviation. NS = NextStep, which is the company that Apple bought in the 90s and was used to develop OS X and iOS. For your own classes Apple recommends that you use your own [two or three](https://developer.apple.com/library/mac/documentation/Cocoa/Conceptual/CodingGuidelines/Articles/NamingBasics.html#//apple_ref/doc/uid/20001281-1002226-BBCJECED) letters prefix, especially if you publish the code.

###What is the difference between `+` and `-` methods in Objective-C?

Methods that begin with a `+` are static class methods and are not tied to a particular instance of a class. Class methods are used as:


    // UIView method declaration
    + (void)animateWithDuration:(NSTimeInterval)duration animations:(void(^)(void))animations;
    // Is used as:
    [UIView animateWithDuration:x animations:^{ /* Animations go here */}];

Methods that begin with a `-` are instance methods, and are related to a single instance of a class:


    // UIView method declaration:
    - (void)addSubview:(UIView*)subview;
    // Is used as:
    [someViewInstance addSubview:someSubview];

The same feature exists in Swift, however the syntax is a little less bizarre. All instance methods just use `func` whereas all static class methods use `class func`.

###What are extensions?

Unlike many other object-oriented programming languages Objective-C has a dynamic runtime that you can use to add methods to existing classes. This reduces the need for subclassing, so can simplify your class hierarchies.

Xcode provides a template for extensions, but here is a basic implementation of a map function for `NSArray`:


    // NSArray+FAQ.h

    @interface NSArray (FAQ)

    /**
     @param mapper An Objective-C block which maps objects in the original array to objects in the new array
     @return An array of mapped objects
    */
    - (NSArray*)faq_map:(id(^)(id))mapper;

    @end

    // NSArray+FAQ.m

    @implementation NSArray (FAQ)

    - (NSArray*)faq_map:(id (^)(id))mapper {
        NSMutableArray * array = [NSMutableArray arrayWithCapacity:self.count];
        for (id object in self) {
            [array addObject:mapper(object)];
        }
        return array;
    }

    @end

    //Usage:

    #import "NSArray+FAQ.h"

    NSArray * numbers = @[@1, @2, @3, @4];
    NSArray * strings = [numbers faq_map:^id(id object) {
        return [object stringValue];
    }];

Apple recommends that if you are writing your own extension methods that you use three letter prefixes (like with class names) so that you avoid clashing with other methods.

###Can I write an app for the Apple Watch in Objective-C?

Yes. Before WatchKit was launched it was rumoured that it was Swift only, but to date (August 2015) all Apple frameworks work in Objective-C.

##Cloud and Web

###Should I use iCloud Core Data?

A few years ago the answer was absolutely not. Since iOS 7 Apple has made the API more stable and reliable. If you have a simple data model you want to sync between devices then Core Data is a good choice. [objc.io has a great guide to get you started](http://www.objc.io/issue-10/icloud-core-data.html).

###Should I use CloudKit?

CloudKit operates differently iCloud Core Data. The benefits of CloudKit are that you get access to a NoSQL-style database, binary data storage, and the ability to share data between users. Additionally CloudKit can send notifications to users based on the results of data queries that run in the cloud. In order to use CloudKit your user will need an Internet connection because data isn't stored locally.

###Should I use Parse?

If you're targeting multiple platforms and you need to share data between devices, Parse will be better than CloudKit. CloudKit has its advantages though; authentication is automatic on iOS devices and Apple has a more generous pricing model.

###Should I run my own servers/VPS?

For most developers the answer is probably not. There are three main reasons to run your own servers:

* You need to manipulate the data in the cloud rather than on devices only
* You want to minimise the cost of scaling through controlling as much of the stack as possible
* You are experienced in managing servers

**Be warned:** running your own servers is a lot of work, and you probably don't need to if you are working on your first cloud-based app.

##Design

###What apps are good for UI design?

Most vector/image editors will work well. [Sketch](https://bohemiancoding.com/sketch/), [Photoshop](http://www.photoshop.com), [Pixelmator](http://pixelmator.com) and [Opacity](http://likethought.com/opacity/) are all great options on OS X. You may also like to try Facebook's [Origami](https://facebook.github.io/origami/) for interaction design.

###Any good design guides or blogs?

The [Human Interface Guidelines](https://developer.apple.com/library/prerelease/ios/documentation/UserExperience/Conceptual/MobileHIG/index.html#//apple_ref/doc/uid/TP40006556-CH66-SW1) are a great place to start - but remember that they're guidelines and not rules. Blogs like [made for iOS 7](http://madeforios7.tumblr.com) and [iOS App designs](http://iosappdesigns.tumblr.com) also showcase great app design.

###Any tips for good design?

* Justify every pixel of your UI - is a control essential for most people?
* Is this interaction obvious? A lot of apps use really interesting combinations of swipes, pinches and taps but make sure that your users will know how to use them.
* Use Auto Layout and size classes. These make it a lot simpler to handle the 5 different screen sizes (iPhone 3.5", iPhone 4", iPhone 4.7", iPhone 5.5", iPad) than writing your layout code manually

###I heard Interface Builder is evil. How do I do everything in code?

Firstly, IB makes many design tasks much easier (especially when setting up Auto Layout constraints) than writing everything in code. The most common complaints when working with IB are that Storyboards prevent you from reusing common views easily without copy/pasting and they don't place nicely with source control. Generally beginners should start out with Storyboards/XIBs before trying to create everything in code.

If you *really* want to do everything in code, Apple has a [guide here](https://developer.apple.com/library/ios/featuredarticles/ViewControllerPGforiPhoneOS/ViewLoadingandUnloading/ViewLoadingandUnloading.html#//apple_ref/doc/uid/TP40007457-CH10-SW36).

##Community

###What developer blogs can I read?

* [NSHipster](http://nshipster.com)
* [objc.io](http://objc.io)
* [Swift](https://developer.apple.com/swift/blog/)
* [Ash Furrow](http://ashfurrow.com)
* [Brent Simmons](http://inessential.com)
* [NSBlog (Mike Ash)](https://mikeash.com/pyblog/)
* **To be continued...**

###What podcasts can I listen to?

####Programming specific

* [Build and Analyze](http://5by5.tv/buildanalyze) (finished)
* [Build Phase](http://podcasts.thoughtbot.com/buildphase)
* [CocoaConf](http://cocoaconf.com/podcast)
* [Core Intuition](http://www.coreint.org)
* [Debug](http://www.imore.com/debug)
* [Developing Perspective](http://developingperspective.com)
* [Edge Cases](http://edgecasesshow.com)
* [Identical Cousins](http://identicalcousins.net) (finished)
* [iDeveloper](http://ideveloper.tv)
* [iOhYes](http://iohyespodcast.com)
* [iPhreaks](http://iphreaksshow.com)
* [Iterate](http://www.imore.com/iterate)
* [NSBrief](http://nsbrief.com)
* [Ray Wenderlich](http://www.raywenderlich.com/rwpodcast)
* [The Record](http://therecord.co)
* [Release Notes](http://releasenotes.tv)
* [Springboard](http://springboardshow.com) (finished?)

####Apple and technology general

* [Accidental Tech Podcast](http://atp.fm)
* [Hypercritical](http://5by5.tv/hypercritical)
* [iMore](http://www.imore.com/imore-show)
* [The Prompt](http://5by5.tv/prompt)
* [The Talk Show (John Gruber)](http://daringfireball.net/thetalkshow/)
* [Technically Correct](http://www.tcp.fm)

##Third party code

###Where can I find great third party code?

[CocoaPods](http://cocoapods.org). CocoaPods is a dependency manager used by Apple developers that makes it really easy to integrate open source code into your iOS or OS X app. Several sites, such as [Cocoa Controls](https://www.cocoacontrols.com/platforms/ios/controls?cocoapods=t) keep track of these.

###Should I use CocoaPods/third party code?

The answer for most people is yes. The vast majority of CocoaPods are licensed under MIT or Apache, which means that you can include them in your app, even if it is closed source and commercial. There is a good guide to different licenses [here](http://blog.codinghorror.com/pick-a-license-any-license/). Also consider whether you are including third party code because it will save you time or you don't know how to do something. You ideally do not want to be in a position where you are publishing an app with code in that you don't know how it works, because you need to support your app.

###Any great CocoaPods that I should know about?

* [AFNetworking](https://github.com/AFNetworking/AFNetworking) - library that handles all your networking needs
* [FMDB](https://github.com/ccgus/fmdb) - Objective-C wrapper for SQLite
* [GSKeychain](https://github.com/goosoftware/GSKeychain) - very simple interface for handling keychain operations
* [MagicalRecord](https://github.com/magicalpanda/MagicalRecord) - easier Core Data
* [Pop](https://github.com/facebook/pop) - dynamic and interactive animation library
* [ReactiveCocoa](https://github.com/ReactiveCocoa/ReactiveCocoa) - functional reactive programming library for Cocoa.
* **To be continued...**

##The App Store

###Will Apple accept my app?

If you need to ask the question, probably not. To quote the [App Store review guidelines](https://developer.apple.com/appstore/resources/approval/guidelines.html):

> We will reject Apps for any content or behavior that we believe is over the line. What line, you ask? Well, as a Supreme Court Justice once said, "I'll know it when I see it". And we think that you will also know it when you cross it.

###How can I monetize my free app?

Ads or in-app purchase. If you include ads, make sure that you use them conservatively and they don't ruin the user experience. You'll generally need >100,000 users to begin to make a decent amount of money from ads. If you have in-app purchases, then make sure that they offer content or features that genuinely offering something useful.

###Is it OK to include 'rate my app' dialogs?

From Apple's standpoint, yes. But please don't. They're annoying and [many people don't like them](http://daringfireball.net/linked/2013/12/05/eff-your-review) - some people even do 'revenge one star reviews', but this is probably a bit extreme. A better approach is to include a link to your App Store page in your app's settings or about screen. If you are going to include the dialog, make sure you do the following:

* Only show the dialog after the user has used the app for a reasonable amount of time (after all, it isn't worth showing it to users that use your app for a few minutes and then delete it, because they would probably give it a low rating)
* Show the rating at the most once per version
* Always provide an option to never show the dialog again, and if the user picks this option then *don't ever show it again!*

###Which ad service should I use?

When you're looking at picking an ad service you need to take into account the eCPM and the fill rate. The eCPM is how much money you make, on average, from 1000 ad impressions. Fill rate is the percentage of ad requests that were successfully responded to with an ad. Ideally this should be as close to 100% as possible. Generally [AdMob](http://www.google.com/ads/admob/) has a higher rate than [iAd](http://iad.apple.com).

**I'm keen to have some statistics here comparing average fill rate and eCPM for different services, if anyone has it**

###How can I get my app featured by Apple?

Build an awesome app that attracts their attention 😀. You can't pay or bribe Apple to feature your app.

###Where should I advertise my app?

Facebook, Twitter, your website, iAd, the web... Make sure you consider your target audience - there is little point in advertising via Facebook if your app is targeted at children under 13.

###My app isn't getting many reviews. What can I do?

Respect your current users and do not spam them with requests for reviews, as above. It isn't really their issue that you aren't getting reviews. You could find a way of politely requesting a review, such as the end of an update description.

###What can I do if somebody copies my app?

If there is a copyright issue (i.e. they're purporting to be you, or they've literally cloned your app's entire UI and feature set) you need to go through the [iTunes Content Dispute](http://www.apple.com/legal/internet-services/itunes/appstorenotices/) system.

##Contracting and Employment

###I'm looking for a job/I want to hire someone. Where should I look?

* [Core Inituition Job Board](http://jobs.coreint.org)
* [iOS Dev Weekly](http://iosdevweekly.com) lists jobs listings in its mailing list
* [Stack Overflow Job Board](http://careers.stackoverflow.com/)
