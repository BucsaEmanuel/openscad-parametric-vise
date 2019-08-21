# generate output files with different views
openscad -o output/top.png vise.scad --camera=0,0,0,0,0,0,350 --projection=ortho --autocenter #top
openscad -o output/bottom.png vise.scad --camera=0,0,0,180,0,0,350 --projection=ortho --autocenter #bottom

# openscad -o output/left.png vise.scad --camera=0,0,0,90,0,270,250 --projection=ortho --autocenter #left
# openscad -o output/right.png vise.scad --camera=0,0,0,90,0,90,250 --projection=ortho --autocenter #right


openscad -o output/left.png vise.scad --camera=0,0,0,60,0,135,350 --projection=ortho --autocenter #left
openscad -o output/right.png vise.scad --camera=0,0,0,60,0,45,350 --projection=ortho --autocenter #right

