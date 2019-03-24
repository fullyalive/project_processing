# **Project_processing**

### **Intro To Creative Computing** 2019 Spring
- 프로세싱 2D 프로젝트와 수업내용을 정리한다.
- 프로젝트는 최대한 다른 method를 이용해 제작한다.


## **PROJECT**

#### [project 1](https://github.com/fullyalive/project_processing/commit/f6b35d5a122509e5113f738a2b6cc883cbcff22a)

주제 - **Diversity**

새롭게 배운 것을 융합하여 성과로 나타나는 것을 표현하였다.

- [pushMatrix(), popMatrix()](https://processing.org/reference/pushMatrix_.html) - 스택을 쌓아서 제어 범위한정
- 한 방향에서 무한히 생성되는 일방향 오브젝트 생성
- 제자리에서 무한히 회전하는 오브젝트 생성

#### [project 2]()

주제 - **Free**

자유를 얻기 위해서는 끊임없는 현실의 제약을 극복하며 나아가야 한다는 것을 표현하였다.

- [map(value, start1, stop1, start2, stop2)](https://processing.org/reference/map_.html) - 한 범위에서 다른 범위로 숫자를 다시 매핑
- [noise(x, y, z)](https://processing.org/reference/noise_.html) - 노이즈 값 생성
- 한 방향에서 무한히 생성되는 일방향 오브젝트 생성
- 노이즈의 y좌표에 맞춰 움직이는 오브젝트 생성

## **Lecture**


##### 3.7 (목)

- [rect(x1, y1, w, h)](https://processing.org/reference/rect_.html)
- [ellipse(x1, y1, w, h)](https://processing.org/reference/ellipse_.html)
- [line(x1, y1, x2, y2)](https://processing.org/reference/line_.html)
- [strokeWeight(n)](https://processing.org/reference/strokeWeight_.html) - 선의 굵기 지정
- [stroke(r, g, b)](https://processing.org/reference/stroke_.html) - 선의 색상 지정

##### 3.12 (화)

- [beginShape()](https://processing.org/reference/beginShape_.html)
- [endShape()](https://processing.org/reference/endShape_.html)
- [vertex(x, y, z, u, v)](https://processing.org/reference/vertex_.html)
- [cos(angle)](https://processing.org/reference/cos_.html)
- [sin(angle)](https://processing.org/reference/sin_.html)

##### 3.14 (목)

- [constraint(amt, low, high)](https://processing.org/reference/constrain_.html)

##### 3.19 (화)

Programming Structure - **Conditional statement IF**

```
    If (A || C) {
        xxxxxxxx
    } else if (condition B == true / false) {
        xxxxxxxx
    } else {
        // if none of above matched to your condition
        xxxxxxxx
    }
```
물체의 왕복 운동을 표현할 수 있다.