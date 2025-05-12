#AP-1000 Fuel Assembly
#Author: May Thu Win
#Date: 05/04/25

fuel_block_id = 1
helium_block_id = 2
clad_block_id = 3
water_block_id = 4
pin_pitch = 1.25984

[Mesh]
    [rmp]
      type = ReactorMeshParams
      dim = 2
      geom = "Square"
      assembly_pitch = ${fparse 17 * pin_pitch}
    []
  
    [pin1]
      type = PinMeshGenerator
      reactor_params = rmp
      pin_type = 1
      pitch = ${pin_pitch}
      region_ids = '${fuel_block_id} ${helium_block_id} ${clad_block_id} ${water_block_id}'
      quad_center_elements = false
      num_sectors = 4
      mesh_intervals = '1 1 1 1'
      ring_radii = '0.409575 0.417830 0.474980'

    []

    [pin2]
        type = PinMeshGenerator
        reactor_params = rmp
        pin_type = 2
        pitch = ${pin_pitch}
        region_ids = '${water_block_id} ${clad_block_id} ${water_block_id}'
        quad_center_elements = false
        num_sectors = 4
        mesh_intervals = '1 1 1'
        ring_radii = '0.56134 0.61214'
  
      []

    #assembly set up
    [Assembly]
        type = AssemblyMeshGenerator
        assembly_type = 1
        inputs = 'pin1 pin2'
        pattern = '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
                   0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
                   0 0 0 0 0 1 0 0 1 0 0 1 0 0 0 0 0;
                   0 0 0 1 0 0 0 0 0 0 0 0 0 1 0 0 0;
                   0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
                   0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0;
                   0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
                   0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
                   0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0;
                   0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
                   0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
                   0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0;
                   0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
                   0 0 0 1 0 0 0 0 0 0 0 0 0 1 0 0 0;
                   0 0 0 0 0 1 0 0 1 0 0 1 0 0 0 0 0;
                   0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
                   0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0'
    []
    #testing pin2 output
    #final_generator = pin2
  []
