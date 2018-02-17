# docker-optimisation
Create multistage builds using dockerfile and python

Here I suggest a neat way of creating lean python docker images, using multistage build and pip wheel archive
 
As you can see in the .dockerfile, we are using AS statement in the first FROM statement, this is aliasing the first image with name base
 
To use the dependencies without reinstalling the compilers in the target image, we use pip wheel archive. 
 
Have a good one!
