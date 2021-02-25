#  SwiftServiceLocator

A quick example of a service locator implementation in Swift.

Application dependencies are wired up in AppConfiguration. At this point the main application accesses the different modules (pods) of the app and asks them to register their dependencies in the provided service container.

Once configuration is done, the container can be passed around the App. Classes that needs dependencies can then rely on only the Protocol types and resolve their corrosponding Implementing instances using the container.

Not sure what I would use this for, but here you go :<)
