#!/bin/bash
for file in ./*
  do
      file=${file##*/}
      name=${file%.*}

      echo '<?xml version="1.0"?>' > "./visual/${name}.urdf"
      echo "<robot name=\"${name}\">" >> "./visual/${name}.urdf"
      echo '  <link name="base_link">' >> "./visual/${name}.urdf"
      echo '    <visual>' >> "./visual/${name}.urdf"
      echo '      <geometry>' >> "./visual/${name}.urdf"
      mesh="<mesh filename=\"../../../../meshes/egad/eval/${name}.obj\" />"
      echo "        $mesh" >> "./visual/${name}.urdf"
      echo '      </geometry>' >> "./visual/${name}.urdf"
      echo '    </visual>' >> "./visual/${name}.urdf"
      echo '  </link>' >> "./visual/${name}.urdf"
      echo '</robot>' >> "./visual/${name}.urdf"
  done