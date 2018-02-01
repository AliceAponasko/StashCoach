# Stash Coach

Achievements list screen using the VIPER architecture.

# Using

- XCode 9.2 (9C40b)
- Swift 4

# Questions

- Should I use Core Data?
    - I don't think so. The nature of the data allows to use a simple cache, it looks like we need to fetch it quite often. Also, with Swift 4 encode / decode is provided for us, so writing to NSCache / file is easy.

- Should I use Pods?
    - Yes, if the project grows bugger and requires more detailed functionality.

- What about those Storyboard constraints?
    - Ususally I prefer to add constraints in code for merging clarity (with `PureLayout` or some similar library), but in this case for speed I'll use the storyboard (although merging won't be fun for the team of 3 and more).

# To Do

- Parse VC title from provided JSON file

- Add UI tests
    - currently we have just one screen and buttons don't have any actions

- Add networking tests

- Add proper server response parsing
    - Right now the app is assuming that it is always a success.

- Add shadow view behind cell's image (if active)
    - We will need to create another view behind the existing image view (or encapsulate image view into a custom view) because of rounded corners.

- Cache library
    - Maybe we could upgrade to some pod in the future for more functionality (like `pod 'Cache', '~> 4.0'`) or simply write to file.

- Define the font
    - Font files should be included in the project, then we will build an extension to use those instead of the default one.

- Add linter
    - Ususally I use SwiftLint.

- Custom Views + IBDesignable
    - So our corner radius is rendering on the storyboard.

- Custom progress bar - from scratch or library
    - Currently just using the default one.

- Custom view for AchievementsTableView
    - Then we can move UITableViewDelegate / DataSource outside of VC to make it even smaller.

- Add image download library
    - Like AlamofireImage. Right now image download is rather naive (no error handling or default images).

- Add logger
    - I have used  `pod 'XCGLogger', '~> 6.0.1'` im my previous projects.


