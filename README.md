# icp_introduction
This example illustrates the implementation of the icp algorithm within octave / matlab. 


# Task 1
Calculate the centroids of the two datasets for model and scene. 


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
\phi = \arctan \left( \dfrac{\sum }{ \sum } \right)
$$


# Task 4 
Calculate the change in translation. 


# Task 5
Apply the transformation to the scene


# Task 6
You will notice that with a higher number of iterations, the matchin "overshoots" a good solution. Fix this by implementing an additional filter, which excludes point pairs, having a high distance. The basic idea is that you reduce a threshold to aquire point pairs over the iterations. 
