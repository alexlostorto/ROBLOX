<h1 align="center">ROBLOX</h1>

This repository includes ROBLOX scripts which you can use to make scripting way easier!

``` lua
# List of functions
function teleport(Player)
function fade_screen()
```

## How it Works 

1) The line equation is calculated for each set of points by calculating the gradient and solving for the y-intercept.

``` lua
# Gets gradient and y-intercept for each line
    def getEquations():
        # Using equation y=mx+c
        counter = 1
        m = []
        c = []
        while counter <= len(x)-1:
            yDif = y[counter] - y[counter - 1]
            xDif = x[counter] - x[counter - 1]
            grad = yDif / xDif
            yIntercept = y[counter] - x[counter] * grad

            m.append(grad)
            c.append(yIntercept)

            counter += 1

        return m, c
```

2) The x-coordinate for every split is calculated

``` lua
    # Gets x-coords for each split
    def getSplits():
        interval = (x[-1] - x[0]) / splits
        x1 = [x[0]]
        for i in range(splits):
            xCoord = x[0] + interval * (i+1)
            x1.append(xCoord)

        return x1
```

3) Calculate where each vertical split intersects the graph

``` lua
    # Gets y-coord of the intersection for each vertical line split
    def getIntersections():
        # Using equation y=mx+c
        counter = 1
        equation = 1
        y1 = [y[0]]
        while counter <= splits-1:
            while x1[counter] >= x[equation]:
                equation += 1
            gradient = m[equation-1]
            yIntercept = c[equation-1]
            xCoord = x1[counter]
            # print(gradient, yIntercept, xCoord)

            yCoord = gradient * xCoord + yIntercept
            y1.append(yCoord)

            counter += 1
        y1.append(y[-1])

        return y1
```

## Analysis of methods 

#### Method 1

Since the graph is made of straight lines, by splitting the graph into triangles and trapeziums at each point, the real area under the graph can be calculated.

``` lua
    def method1():
        # Using equation (y1+y2)*(x2-x1)/2
        area1 = 0
        for i in range(len(m)):
            area1 += (y[i]+y[i+1]) * (x[i+1]-x[i]) / 2

        return area1
```

#### Method 2

By using a trapezoidal equation devised by my friend [MartinMimiGames](https://github.com/martinmimigames), the area under the graph is approximated; the higher the number of splits, the more accurate the approximation.

``` lua
    def method2():
        # Using equation x/2n(2Σy-(y[0]+y[-1]))
        area2 = ((x[-1]-x[0])/(2*splits)) * (2*sum(y1)-(y1[0]+y[-1]))

        return area2
```

## Screenshots
<p align="center"><img width="80%" src="https://github.com/alexlostorto/Calculus/raw/main/git_images/velocity_time_graph_1.PNG" alt="velocity time graph high number of splits" /></p>
<p align="center"><img width="80%" src="https://github.com/alexlostorto/Calculus/raw/main/git_images/velocity_time_graph_2.PNG" alt="velocity time graph low number of splits" /></p>

## Credits 

Everything is coded by Alex lo Storto

Licensed under the MIT License.
