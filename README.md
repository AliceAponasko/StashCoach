# Stash Coach

Achievements list screen using the VIPER architecture

# Comments

- Should I use Core Data? - I don't think so, the nature of the data allows to use a simple cache, it looks like we need to fetch it as much as possible?

- Should I use Pods? - If yes, argument the need.

- Storyboard constraints? - Ususally I prefer to add constraints in code for merging clarity, but in this case for speed I'll use the storyboard tools (although merging won't be fun for the team of 3 and more).
