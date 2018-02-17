# docker-optimisation
Create multistage builds using dockerfile and python

Here I suggest a neat way of creating lean python docker images, using multistage build and pip wheel archive
 
As you can see in the .dockerfile, we are using AS statement in the first FROM statement, this is aliasing the first image with name base
 
 ```
 FROM python:2.7-alpine as base
 ```
 
In this image we will compile the projects dependencies, and create wheel files to copy to final image
 
 ```
 COPY --from=base /svc /svc
 ```
 
 after copying installing the wheels in the target image
 
 ```
 RUN pip install --no-index --find-links=/shadow_reporting/wheels -r requirements.txt
 ```
 
 
And that's it
 
Have a good one!