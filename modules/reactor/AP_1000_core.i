#AP-1000 Fuel Core
#Author: May Thu Win
#Date: 05/11/25

fuel_235wo_block_id = 1
fuel_340wo_block_id = 2
fuel_445wo_block_id = 3
helium_block_id = 10
clad_block_id = 11
water_block_id = 12
pin_pitch = 1.25984

[Mesh]
    [rmp]
      type = ReactorMeshParams
      dim = 2
      geom = "Square"
      assembly_pitch = ${fparse 17 * pin_pitch}
      radial_boundary_id = 1000
    []
  
    [pin_235wo]
      type = PinMeshGenerator
      reactor_params = rmp
      pin_type = 1
      pitch = ${pin_pitch}
      region_ids = '${fuel_235wo_block_id} ${helium_block_id} ${clad_block_id} ${water_block_id}'
      quad_center_elements = false
      num_sectors = 4
      mesh_intervals = '1 1 1 1'
      ring_radii = '0.409575 0.417830 0.474980'

    []

    [pin_340wo]
        type = PinMeshGenerator
        reactor_params = rmp
        pin_type = 2
        pitch = ${pin_pitch}
        region_ids = '${fuel_340wo_block_id} ${helium_block_id} ${clad_block_id} ${water_block_id}'
        quad_center_elements = false
        num_sectors = 4
        mesh_intervals = '1 1 1 1'
        ring_radii = '0.409575 0.417830 0.474980'
  
    []

    [pin_445wo]
        type = PinMeshGenerator
        reactor_params = rmp
        pin_type = 3
        pitch = ${pin_pitch}
        region_ids = '${fuel_445wo_block_id} ${helium_block_id} ${clad_block_id} ${water_block_id}'
        quad_center_elements = false
        num_sectors = 4
        mesh_intervals = '1 1 1 1'
        ring_radii = '0.409575 0.417830 0.474980'
  
    []

    [pin_guide_tube]
        type = PinMeshGenerator
        reactor_params = rmp
        pin_type = 10
        pitch = ${pin_pitch}
        region_ids = '${water_block_id} ${clad_block_id} ${water_block_id}'
        quad_center_elements = false
        num_sectors = 4
        mesh_intervals = '1 1 1'
        ring_radii = '0.56134 0.61214'
  
      []

    #assembly set up
    [Assembly_235wo]
        type = AssemblyMeshGenerator
        assembly_type = 1
        inputs = 'pin_235wo pin_guide_tube'
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

    [Assembly_340wo]
        type = AssemblyMeshGenerator
        assembly_type = 2
        inputs = 'pin_340wo pin_guide_tube'
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

    [Assembly_445wo]
        type = AssemblyMeshGenerator
        assembly_type = 3
        inputs = 'pin_445wo pin_guide_tube'
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

    [Core]
        type = CoreMeshGenerator 
        inputs = 'Assembly_235wo Assembly_340wo Assembly_445wo Empty'
        dummy_assembly_name = Empty
        pattern =  '3 3 3 3 3 3 2 2 2 3 3 3 3 3 3;
                    3 3 3 3 2 2 2 0 2 2 2 3 3 3 3;
                    3 3 3 2 2 1 0 1 0 1 2 2 3 3 3;
                    3 3 2 0 1 0 1 0 1 0 1 0 2 3 3;
                    3 2 2 1 0 1 0 1 0 1 0 1 2 2 3;                   
                    3 2 1 0 1 0 1 0 1 0 1 0 1 2 3;
                    2 2 0 1 0 1 0 1 0 1 0 1 0 2 2;
                    2 0 1 0 1 0 1 0 1 0 1 0 1 0 2;
                    2 2 0 1 0 1 0 1 0 1 0 1 0 2 2;
                    3 2 1 0 1 0 1 0 1 0 1 0 1 2 3;
                    3 2 2 1 0 1 0 1 0 1 0 1 2 2 3;
                    3 3 2 0 1 0 1 0 1 0 1 0 2 3 3;
                    3 3 3 2 2 1 0 1 0 1 2 2 3 3 3;
                    3 3 3 3 2 2 2 0 2 2 2 3 3 3 3;
                    3 3 3 3 3 3 2 2 2 3 3 3 3 3 3'
    []
  []
