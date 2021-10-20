# s4tf_fun
An ML practitioner's fun way to adopt swift for deep learning using Swift-TensorFlow APIs 

Our approach will be different.

1. We first learn how to create a swift project.

This is important as it creates a bunch of folder and files that will neatly 
fit the compilation model and help to work with Swift Package Manager (SPM).

Learning about this package manager makes life easy.
Here is a good link to use:

https://theswiftdev.com/swift-package-manager-tutorial/


2. Next we create a simple executable project to see if we can do basics.


3. Then we go about creating a simple library.
All of the things we want to do across all other projects we can build into
this common library.

4. Next we learn how to add this library as a dependency and call it in our
next project onwards.
This helps us learn how nicely SPM integrates and forces the developer to
adhere to continious integration practices.

5. We now start learning Python InterOp added into S4TF by adding python 
import of 'matplotlib'

6. Next we do the same plots with package import of 'TensorBoardS'

7. As we continue this graphical route, we learn that there are some functions
that we need and are not there in S4TF. We use 'extensions' to  enhance 
existing 'struct' to create the functions we want.

FINAL:- Swift4TensorFlow has been archived by Google...so any hopes of futuristic programming paradigms squarely lie on Julia only.
