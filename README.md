# RPN Calculator
Reverse Polish Notation calculator styled to reflect the design aesthetic of Apple calculator applications. The system architecture follows the Model-View-Controller (MVC) design pattern. The Model is instantiated lazily from the Controller, handling evaluation of the values and operations being pushed to the stack with two cases, for unary and binary operations, to recursively evaluate the stack.

The Controller handles the logic for pressing of digits, inputting of values, and initiation of operations while the displayed value is dynamically updated using a computed property. The View has been styled with distinct classes, catering to various buttons and the display label to achieve a clean and user-friendly interface.

<p style="text-align: center">
  <img src="./readme-files/1-opening.png" width="400" />
  <img src="./readme-files/2-entering-first.png" width="400" /> 
</p>
<p style="text-align: center">
  <img src="./readme-files/3-entering-second.png" width="400" />
  <img src="./readme-files/4-summing.png" width="400" /> 
</p>
<p style="text-align: center">
  <img src="./readme-files/5-negating.png" width="400" />
  <img src="./readme-files/6-square-rooting.png" width="400" /> 
</p>
<p style="text-align: center">
  <img src="./readme-files/7-rotating.png" width="800" />
</p>