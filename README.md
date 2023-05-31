# icp_introduction
This example illustrates the implementation of the icp algorithm within octave / matlab. 


# Task 1
Calculate the centroids of the two datasets for model and scene. 

![image](https://github.com/christianpfitzner/icp_introduction/assets/20952014/ee4bc5dc-900b-4309-b321-c822733f320e)



$$
c_d = \sum_{i=1}^N d_i  \quad c_m = \sum_{i=1}^N m_i
$$

# Task 2
Calculate subtract the previously calculated centroid for the model and scene. 

$$
d_i' = d_i - c_d \quad m_i' = m_i - c_m
$$


# Task 3
Calculate the change in orientation. 

$$
\phi = \arctan \left( \dfrac{\sum y_{m,i}' x_{d,i}' - x_{m,i}'y_{d,i}' }{ \sum x_{m,i}'x_{d,i}' + y_{m,i}'y_{d,i}'} \right)
$$


# Task 4 
Calculate the change in translation. 

$$
t = c_m - R(\phi)c_d
$$

# Task 5
Apply the transformation to the scene, either based on translation $t$ and Rotation $R$ separately, or alternatively, based on homegeneous coordinates: 

$$
p' = T(\phi, t)p
$$

# Task 6
You will notice that with a higher number of iterations, the matchin "overshoots" a good solution. Fix this by implementing an additional filter, which excludes point pairs, having a high distance. The basic idea is that you reduce a threshold to aquire point pairs over the iterations. 


# Optional
Draw include a visualization for the point pairs and visualize the decreasing mean square error. 





# SLAM on the Robot
If you finished the above implementation, grab yourself a turtlebot and try to run hector slam on it. Here you find a description with more details
https://emanual.robotis.com/docs/en/platform/turtlebot3/slam/
