# openscad-parametric-vise
An attempt at making a parametric vise with OpenScad.

I am in the learning phase with OpenScad, so this should be a nice project to learn it.

The first stage is to make it static (not parametric), then I should see how we can modify 
parameters and influence the output.

Added ```watcher.sh```, which basically watches the vise.scad file and it runs ```commands.sh```, which
in turn generates some renders in the ```output``` folder.

You'll need ```nodemon``` for the watcher to work.

![Right side view](output/right.png?raw=true "Right side view")