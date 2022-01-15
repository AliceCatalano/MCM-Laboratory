# MCM-Laboratory
Laboratory to define model matrices fot the robotic arm represented here developped by [Youssef Attia](https://github.com/youssefattia98), [Hussein Hassan](https://github.com/husseinfd97) and Alice Catalano. 

The code here is the result of the second attempt of coding, following the structure given by the professor. In the former project we did a diagram of the robot fixing the frames for each link and joint; then the DH table was defined to obtain the transformation matrix for every joint with respect to the previous one. 

After all this was made we tried to use a [tool](https://github.com/petercorke/robotics-toolbox-matlab.git) used in the code LABone.m by [Peter Corke](https://petercorke.com/toolboxes/robotics-toolbox/) to apply inverse and forthward kinematic and the Jacobian matrix to get the transformation matrix from the base frame to the endeffector frame, but because of the complexity of the robot and its 7 degrees of freedom it didn't work.

At the end we used the structure of the Code given by the professor, and because of this struggling we couldn't do the Jacobian task in the deadline.
