# openscad-parametric-vise
An attempt at making a parametric vise with OpenScad.

I am in the learning phase with OpenScad, so this should be a nice project to learn it.

The first stage is to make it static (not parametric), then I should see how we can modify 
parameters and influence the output.

Added ``` watcher.sh ```, which basically watches the vise.scad file and it runs ``` commands.sh ```, which
in turn generates some renders in the ```output``` folder.

You'll need ``` nodemon ``` for the watcher to work. Also, make the files executable: ``` chmod +x watcher.sh commands.sh ```

![Right side view](output/polygonBase/right.png?raw=true "Right side view")
![Left side view](output/polygonBase/left.png?raw=true "Left side view")
![Top side view](output/polygonBase/top.png?raw=true "Top side view")

Update:
- moved ```polygonBase.scad``` and ```polyhedronBase.scad``` to ```old_attempts``` folder because going the polyhedron route, while it renders really fast, it throws errors when trying to make the necessary holes. The polygonBase.scad I think can be improved with a minimal amount of operations.