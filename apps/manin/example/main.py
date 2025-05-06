from manim import *
class DefaultTemplate(Scene):
    def construct(self):
        circle = Circle()  # create a circle
        circle.set_fill(PINK, opacity=0.5)  # set color and transparency

        square = Square()  # create a square
        square.flip(RIGHT)  # flip horizontally
        square.rotate(-3 * TAU / 8)  # rotate a certain amount

        self.play(Create(square))  # animate the creation of the square
        self.play(Transform(square, circle))  # interpolate the square into the circle
        self.play(FadeOut(square))  # fade out animation

# https://manimclass.com/manim-latex/#:~:text=To%20animate%20an%20equation%20changing%20in%20Manim%2C%20first%20create%20the,version%20to%20the%20second%20one.

class TransformEquation1(Scene):
    def construct(self):
        t1 = Tex(r"$x_{1, 2} =$", r"$\frac{-b \pm \sqrt{D}}{2a}$", font_size = 48)
        t2 = Tex(r"$x_{1, 2} =$", r"$\frac{-b \pm \sqrt{b^2 - 4ac}}{2a}$", font_size = 48)
        g = VGroup(t1, t2).arrange(DOWN, aligned_edge = LEFT, buff = 1)
        self.play(Write(t1))
        self.wait(0.5)
        self.play(TransformFromCopy(t1[0], t2[0]))
        self.play(TransformFromCopy(t1[1], t2[1]))
        self.wait()

# https://docs.manim.community/en/stable/reference/manim.animation.transform_matching_parts.TransformMatchingTex.html
class MatchingEquationParts(Scene):
    def construct(self):
        variables = VGroup(MathTex("a"), MathTex("b"), MathTex("c")).arrange_submobjects().shift(UP)

        eq1 = MathTex("{{x}}^2", "+", "{{y}}^2", "=", "{{z}}^2")
        eq2 = MathTex("{{a}}^2", "+", "{{b}}^2", "=", "{{c}}^2")
        eq3 = MathTex("{{a}}^2", "=", "{{c}}^2", "-", "{{b}}^2")

        self.add(eq1)
        self.wait(0.5)
        self.play(TransformMatchingTex(Group(eq1, variables), eq2))
        self.wait(0.5)
        self.play(TransformMatchingTex(eq2, eq3))
        self.wait(0.5)
