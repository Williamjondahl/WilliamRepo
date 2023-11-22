use context essentials2021
include color

sea = rectangle(500, 120, "solid", color(46, 105, 217, 1))
sky = rectangle(500, 300, "solid", color(0, 208, 255, 1))
sun = circle(40, "solid", color(255, 255, 0, 1))
ground = rectangle(500, 30, "solid", color(6, 107, 2, 1))
mountain1 = isosceles-triangle(250, 150, "solid", color(122, 129, 133, 1))
mountain2 = isosceles-triangle(150, 130, "solid", color(122, 129, 133, 1))

mountainAlign = rectangle(500, 50, "solid", "transparent")
placeMountain1 = underlay-align("center", "top", mountainAlign, mountain1)
placeMountain2 = underlay-align("right", "top", mountainAlign, mountain2)

sunAlign = rectangle(450, 250, "solid", "transparent")
placeSun = underlay-align("left", "top", sunAlign, sun)

base = underlay-align("center", "bottom", sky, sea)
drawGround = underlay-align("center", "bottom", base, ground)
drawSun = underlay-align("center", "center", drawGround, placeSun)
drawMountain1 = underlay-align("center", "center", drawSun, placeMountain1)
drawMountain2 = underlay-align("center", "center", drawMountain1, placeMountain2)
drawMountain2