# soloScrollEjercicio
Title: scroll view and layout programmatically  using swift 3

The task:
Horizontal Scroll
Layout an array of 4 images, square of 240 x 240 and 20 of spacing.
The constraints for the scroll view are set directly in the storyboard, but the images subviews are added programmatically
using Visual Format language for the layout of the subviews and content size suppose done by this constraints.

What I have done:
Set the array of images, create de ImageView programmatically and add the using a for  in  loop.
Create the constraints using the visual format. A way to do this can be found in this book: http://www.apeth.com/iOSBook/ch20.html


I have no warnings, no errors. Building OK. But it does not scroll. Just visible the last image and in the console I have:
2018-04-29 18:24:06.534107-0500 soloScrollEjercicio[11374:1301235] [LayoutConstraints] Unable to simultaneously satisfy constraints.
