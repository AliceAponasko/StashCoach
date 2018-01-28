# Stash Coach

Achievements list screen using the VIPER architecture

# Comments

- So far, the hardest thing is to spell "achievements" properly every time.

- Should I use Core Data? - I don't think so, the nature of the data allows to use a simple cache, it looks like we need to fetch it as much as possible?

- Should I use Pods? - If yes, argument the need.

- Storyboard constraints? - Ususally I prefer to add constraints in code for merging clarity, but in this case for speed I'll use the storyboard tools (although merging won't be fun for the team of 3 and more).

- Font? - Not sure... if custom, then font files should be included in the project, then we will build an extension to use those instead of the default one.

- Linter? - Ususally I use SwiftLint, let's see if I have time to include it here.

- Custom Views + IBDesignable? - So our corner radius is rendering on the storyboard.

- Custom progress bar - from scratch or library? - Currently just using the default one.
