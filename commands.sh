EXT=scad
OUTPUTFOLDER=output

function createRenders {
	openscad -o ${1}/top.png ${2} --camera=0,0,0,0,0,0,350 --projection=ortho --autocenter --viewall --render #top
	# openscad -o ${1}/bottom.png ${2} --camera=0,0,0,180,0,0,350 --projection=ortho --autocenter --viewall --render #bottom
	openscad -o ${1}/left.png ${2} --camera=0,0,0,60,0,135,350 --projection=ortho --autocenter --viewall --render #left
	openscad -o ${1}/right.png ${2} --camera=0,0,0,60,0,45,350 --projection=ortho --autocenter --viewall --render #right
}

rm -rf "${OUTPUTFOLDER}"
	
for file in *.${EXT}; do
	# each file gets 4 renders in their own folders
	folderPath="${OUTPUTFOLDER}/${file/.$EXT/}"
	mkdir -p "${folderPath}"

	createRenders "${folderPath}/" "${file}"
	
done





