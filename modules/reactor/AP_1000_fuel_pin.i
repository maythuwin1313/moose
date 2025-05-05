#AP-1000 Fuel Pin
#Author: May Thu Win
#Date: 05/04/25

fuel_block_id = 1
helium_block_id = 2
clad_block_id = 3
water_block_id = 4

[Mesh]
    [rmp]
      type = ReactorMeshParams
      dim = 2
      geom = "Square"
      assembly_pitch = 7.10315
    []
  
    [pin1]
      type = PinMeshGenerator
      reactor_params = rmp
      pin_type = 2
      pitch = '1.25984'
      region_ids = '${fuel_block_id} ${helium_block_id} ${clad_block_id} ${water_block_id}'
      quad_center_elements = false
      num_sectors = 4
      mesh_intervals = '1 1 1 1'
      ring_radii = '0.409575 0.417830 0.474980'

    []
  []