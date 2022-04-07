# SwiftUmbrellaFrameworks
Demonstrates how Umbrella frameworks are possible when developing a Swift Framework

# Problem Statement
Typically, a SDK is exposed as a single Framework for ease of integration.
However, you mayw want to group code into internal modules to better encapsulate our code, allow teams to work independently, and share common Core logic.

# Solution
Encapsulate all internal Frameworks by linking them statically to the single exposed Umbrella Framework. The Umbrella Framework can be static or dynamic. This solution works well for Swift only SDKs.

# Instructions
## Creating an Internal Module
- Create a new (non-embedded) Framework
- Change Framework -> Build Settings -> Mach-O Type to Static Library
- Add new Framework to Umbrella Framework’s Framework and Libraries but Do Not Embed
- Add dependencies to the new Framework in Framework and Libraries but Do Not Embed

### Alternative Approach (See https://github.com/yusufoos/SwiftUmbrellaFrameworks/tree/dynamic)
- Create all Frameworks as dynamic
- Embed all Frameworks only into the Umbrella Framework 

# Importing Internal Modules in the Public API
When updating the public interface based off of a new internal module you will need to import it.
In order for this to not cause compiler errors in the XCFramework you must use @_implementationOnly
