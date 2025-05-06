# python version
py 3.13 not working -- numpy problems

py 3.9 working

# install

This has to be installed first:
conda install x264 ffmpeg -c conda-forge

This is installed later
conda install conda-forge::manim

# running
manim -pql main.py CreateCircle

-p preview
-ql qualiy 480p

# miktex needs to be installed
miktex console: install preview package

# update

It installed here:
'C:\Users\adam\AppData\Roaming\Python\Python39\Scripts'

Because it could not install here:
'd:\\miniconda\\envs\\py39\\scripts\\manim.exe'

# rendering
When executing the command

`manim -pql scene.py SquareToCircle`

it specifies the scene to render. This is not necessary now. When a single file contains only one Scene class, it will just render the Scene class. When a single file contains more than one Scene class, manim will let you choose a Scene class. If your file contains multiple Scene classes, and you want to render them all, you can use the -a flag.

As discussed previously, the -ql specifies low render quality (854x480 15FPS). This does not look very good, but is very useful for rapid prototyping and testing. The other options that specify render quality are -qm, -qh, -qp and -qk for medium (1280x720 30FPS), high (1920x1080 60FPS), 2k (2560x1440 60FPS) and 4k quality (3840x2160 60FPS), respectively.

The -p flag plays the animation once it is rendered. If you want to open the file browser at the location of the animation instead of playing it, you can use the -f flag. You can also omit these two flags.

# frame

To change the canvas size in Manim, you can modify the `frame_width` and `frame_height` configuration options either directly in your script or through a `manim.cfg` file [1, 2, 3].  Additionally, you can use the `-r` parameter during rendering to set the desired pixel size [2].

**Here's a breakdown of the methods:**

**1. Modifying in the script:**

```
from manim import *

class MyScene(Scene):
    def construct(self):
        # Access the configuration object
        config = self.config

        # Modify frame width and height (in logical units)
        config.frame_width = 10
        config.frame_height = 7

        # Add some content to the scene (e.g., a text)
        text = Text("Hello, Manim!")
        self.add(text)
```

**2. Using a `manim.cfg` file:**

Create a file named `manim.cfg` in your project directory and add the following lines:
```
frame_width = 10
frame_height = 7
```
Then, when running your scene, Manim will automatically load these settings.

**3. Using the `-r` parameter during rendering:**

You can use the command-line argument `-r` followed by the desired pixel width and height, for example:
```bash
manim my_scene.py MyScene -r 1920,1080

```
**Explanation:**

*   **`frame_width` and `frame_height`:** These values determine the size of the scene in Manim's coordinate system, measured in "logical units" [3, 7]. The default values are `frame_width = 14.222222222222221` and `frame_height = 8.0` [13].
*   **`pixel_width` and `pixel_height`:** These values determine the final pixel size of the rendered image or video [2, 4].
*   **`-r` parameter:** This command-line argument overrides the default values of `pixel_width` and `pixel_height` [2].
*   **`manim.cfg` file:** This file allows you to store configuration options, including canvas size, in a persistent way [3, 11].

**In summary:**

To change the canvas size, you can either:

1.  Modify `frame_width` and `frame_height` within your scene code or in a `manim.cfg` file.
2.  Use the `-r` parameter during rendering to set the desired pixel dimensions.By using these methods, you can control the size and aspect ratio of your Manim scenes to suit your needs [2, 4].

{HeroVideo}
  You can watch this video to learn how to make shapes with Manim:
  {Video: How to Make Shapes with Manim! (Beginner Tutorial)}
{/HeroVideo}

# tutorial
https://store.thaomaoh.com/b/manim-course

# windows installation
https://www.youtube.com/watch?v=Qf8H7AKWClE

https://manimclass.com/how-to-install-manim-on-windows/

# scale

If the rendered equation in Manim is too large, you can adjust its size by scaling the MathTex object or by adjusting the overall frame size. You can use the .scale() method on the MathTex object to change its size directly, or use the -r flag when running Manim to set the desired resolution, as explained on Stack Overflow. [1, 2, 2, 3]  
Here's a breakdown of how to address this: 
1. Scaling the MathTex object: [2, 2]  

• Use the .scale(factor) method on the MathTex object. For example, equation.scale(0.5) would reduce the size of the equation by half. 
• This is generally the most direct way to adjust the size of a single equation within a scene. [2]  

2. Adjusting the overall frame size: [1, 1]  

• Use the -r flag when running Manim to specify the resolution (width and height) of the video or image. For example, manim -r 1920,1080 your_scene.py would set the resolution to 1920x1080 pixels. 
• You can also set the pixel_width and pixel_height parameters in your scene, or adjust the frame_width or frame_height parameters. [1, 1]  

3. Example Code Snippet: 
```
   from manim import *

   class Example(Scene):
       def construct(self):
           equation = MathTex(r"y = \frac{1}{2}x + 5")
           # Scale the equation to a smaller size
           equation.scale(0.5)
           self.add(equation)
```
Key Points: [1, 1, 2, 2]  

• Manim uses a coordinate system where the stage is 14 units wide and 8 units high. 
• Consider the overall composition of your scene when adjusting sizes. You might need to adjust the positioning of other objects as well. 
• Experiment with different scaling factors and resolution settings to achieve the desired size and visual balance. [1, 2, 4]  

Generative AI is experimental.

[1] https://stackoverflow.com/questions/68529610/how-to-set-the-size-of-pic-video-rendered-by-manim[2] https://stackoverflow.com/questions/71938647/manim-equation-transformation[3] https://github.com/3b1b/manim/issues/1098[4] https://docs.manim.community/en/stable/tutorials/building_blocks.html
