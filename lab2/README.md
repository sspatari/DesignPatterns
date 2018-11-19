# Laboratory work 2

In this laboratory work there were implemented Decorator, Strategy and Flyweight Design Patterns based on coffee theme. As seen in the code the Flyweight works very well with the strategy design pattern.
The flyweight is used when initaliasing something the first time takes to much time. And in order to save this time for the next objects. We basically reuse them by saving them in an array or something related to it. When the code is runned by typing ```ruby test.rb``` you can see that the first time the Strategies are created they take 2 seconds but next time that we use the same type of strategy it bypasses the initialisation and reuses the old one.
The  Decorator is as simple as adding sugar, milk or honey to the coffee and obtaining  the same coffee object witch we can further decorate.
