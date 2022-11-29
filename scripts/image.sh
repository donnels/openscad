filename="filename" #without the .scad ending
#use basename to get it :-)

openscad -o ${filename}.png \
  --colorscheme=Tomorrow \
  --imgsize=1220,1080 \
  --camera=29195,6209,-8400,66,0,305,210000 \
  ${filename}.scad
