#AP-1000 Fuel Core with Poison
#Author: May Thu Win
#Date: 05/15/25

fuel_235wo_block_id = 1
fuel_340wo_block_id = 2
fuel_340wo_poison_block_id = 3
fuel_445wo_block_id = 4
fuel_445wo_poison_block_id = 5

helium_block_id = 10
clad_block_id = 11
water_block_id = 12
steel_block_id = 13
pin_pitch = 1.25984

[Mesh]
    
    [rmp]
      type = ReactorMeshParams
      dim = 2
      geom = "Square"
      assembly_pitch = ${fparse 17 * pin_pitch}
      radial_boundary_id = 1000
      region_id_as_block_name = true
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

    [pin_340wo_poison]
        type = PinMeshGenerator
        reactor_params = rmp
        pin_type = 3
        pitch = ${pin_pitch}
        region_ids = '${fuel_340wo_poison_block_id} ${helium_block_id} ${clad_block_id} ${water_block_id}'
        quad_center_elements = false
        num_sectors = 4
        mesh_intervals = '1 1 1 1'
        ring_radii = '0.409575 0.417830 0.474980'
    []

    [pin_445wo]
        type = PinMeshGenerator
        reactor_params = rmp
        pin_type = 4
        pitch = ${pin_pitch}
        region_ids = '${fuel_445wo_block_id} ${helium_block_id} ${clad_block_id} ${water_block_id}'
        quad_center_elements = false
        num_sectors = 4
        mesh_intervals = '1 1 1 1'
        ring_radii = '0.409575 0.417830 0.474980'
  
    []

    [pin_445wo_poison]
        type = PinMeshGenerator
        reactor_params = rmp
        pin_type = 5
        pitch = ${pin_pitch}
        region_ids = '${fuel_445wo_poison_block_id} ${helium_block_id} ${clad_block_id} ${water_block_id}'
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
        assembly_type = 10
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

    [Assembly_340wo_28_poison]
        type = AssemblyMeshGenerator
        assembly_type = 11
        inputs = 'pin_340wo pin_340wo_poison pin_guide_tube'
        pattern = '1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1;
                   1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1;
                   0 0 0 0 0 2 1 0 2 0 1 2 0 0 0 0 0;
                   0 0 0 2 0 0 0 0 0 0 0 0 0 2 0 0 0;
                   0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0;
                   0 0 2 0 0 2 0 0 2 0 0 2 0 0 2 0 0;
                   0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 0;
                   0 0 0 0 0 0 0 1 0 1 0 0 0 0 0 0 0;
                   0 0 2 0 0 2 0 0 2 0 0 2 0 0 2 0 0;
                   0 0 0 0 0 0 0 1 0 1 0 0 0 0 0 0 0;
                   0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 0;
                   0 0 2 0 0 2 0 0 2 0 0 2 0 0 2 0 0;
                   0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0;
                   0 0 0 2 0 0 0 0 0 0 0 0 0 2 0 0 0;
                   0 0 0 0 0 2 1 0 2 0 1 2 0 0 0 0 0;
                   1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1;
                   1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1'
    []

    [Assembly_340wo_44_poison]
        type = AssemblyMeshGenerator
        assembly_type = 12
        inputs = 'pin_340wo pin_340wo_poison pin_guide_tube'
        pattern = '1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1;
                   1 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 1;
                   0 0 0 0 0 2 0 0 2 0 0 2 0 0 0 0 0;
                   0 0 0 2 1 0 0 0 1 0 0 0 1 2 0 0 0;
                   0 0 0 1 0 0 0 0 0 0 0 0 0 1 0 0 0;
                   0 1 2 0 0 2 1 0 2 0 1 2 0 0 2 1 0;
                   0 0 0 0 0 1 0 0 1 0 0 1 0 0 0 0 0;
                   0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
                   0 0 2 1 0 2 1 0 2 0 1 2 0 1 2 0 0;
                   0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
                   0 0 0 0 0 1 0 0 1 0 0 1 0 0 0 0 0;
                   0 1 2 0 0 2 1 0 2 0 1 2 0 0 2 1 0;
                   0 0 0 1 0 0 0 0 0 0 0 0 0 1 0 0 0;
                   0 0 0 2 1 0 0 0 1 0 0 0 1 2 0 0 0;
                   0 0 0 0 0 2 0 0 2 0 0 2 0 0 0 0 0;
                   1 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 1;
                   1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1'
    []

    [Assembly_340wo_88_poison]
        type = AssemblyMeshGenerator
        assembly_type = 13
        inputs = 'pin_340wo pin_340wo_poison pin_guide_tube'
        pattern = '1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1;
                   1 0 0 0 0 1 0 0 1 0 0 1 0 0 0 0 1;
                   0 0 1 0 1 2 0 1 2 1 0 2 1 0 1 0 0;
                   0 0 0 2 1 1 0 0 0 0 0 1 1 2 0 0 0;
                   0 0 1 1 0 1 0 0 1 0 0 1 0 1 1 0 0;
                   0 1 2 1 1 2 0 1 2 1 0 2 1 1 2 1 0;
                   0 0 0 0 0 0 1 0 0 0 1 0 0 0 0 0 0;
                   0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0;
                   0 1 2 0 1 2 0 1 2 1 0 2 1 0 2 1 0;
                   0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0;
                   0 0 0 0 0 0 1 0 0 0 1 0 0 0 0 0 0;
                   0 1 2 1 1 2 0 1 2 1 0 2 1 1 2 1 0;
                   0 0 1 1 0 1 0 0 1 0 0 1 0 1 1 0 0;
                   0 0 0 2 1 1 0 0 0 0 0 1 1 2 0 0 0;
                   0 0 1 0 1 2 0 1 2 1 0 2 1 0 1 0 0;
                   1 0 0 0 0 1 0 0 1 0 0 1 0 0 0 0 1;
                   1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1'
    []

    [Assembly_445wo]
        type = AssemblyMeshGenerator
        assembly_type = 20
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
    [Assembly_445wo_72_poison]
        type = AssemblyMeshGenerator
        assembly_type = 21
        inputs = 'pin_445wo pin_445wo_poison pin_guide_tube'
        pattern = '1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1;
                   1 0 0 0 0 1 0 0 1 0 0 1 0 0 0 0 1;
                   0 0 0 0 1 2 0 1 2 1 0 2 1 0 0 0 0;
                   0 0 0 2 1 0 0 0 0 0 0 0 1 2 0 0 0;
                   0 0 1 1 0 1 0 0 1 0 0 1 0 1 1 0 0;
                   0 1 2 0 1 2 0 1 2 1 0 2 1 0 2 1 0;
                   0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
                   0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0;
                   0 1 2 0 1 2 0 1 2 1 0 2 1 0 2 1 0;
                   0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0;
                   0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
                   0 1 2 0 1 2 0 1 2 1 0 2 1 0 2 1 0;
                   0 0 1 1 0 1 0 0 1 0 0 1 0 1 1 0 0;
                   0 0 0 2 1 0 0 0 0 0 0 0 1 2 0 0 0;
                   0 0 0 0 1 2 0 1 2 1 0 2 1 0 0 0 0;
                   1 0 0 0 0 1 0 0 1 0 0 1 0 0 0 0 1;
                   1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1'
    []
    [Assembly_445wo_88_poison]
        type = AssemblyMeshGenerator
        assembly_type = 22
        inputs = 'pin_445wo pin_445wo_poison pin_guide_tube'
        pattern = '1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1;
                   1 0 0 0 0 1 0 0 1 0 0 1 0 0 0 0 1;
                   0 0 1 0 1 2 0 1 2 1 0 2 1 0 1 0 0;
                   0 0 0 2 1 1 0 0 0 0 0 1 1 2 0 0 0;
                   0 0 1 1 0 1 0 0 1 0 0 1 0 1 1 0 0;
                   0 1 2 1 1 2 0 1 2 1 0 2 1 1 2 1 0;
                   0 0 0 0 0 0 1 0 0 0 1 0 0 0 0 0 0;
                   0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0;
                   0 1 2 0 1 2 0 1 2 1 0 2 1 0 2 1 0;
                   0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0;
                   0 0 0 0 0 0 1 0 0 0 1 0 0 0 0 0 0;
                   0 1 2 1 1 2 0 1 2 1 0 2 1 1 2 1 0;
                   0 0 1 1 0 1 0 0 1 0 0 1 0 1 1 0 0;
                   0 0 0 2 1 1 0 0 0 0 0 1 1 2 0 0 0;
                   0 0 1 0 1 2 0 1 2 1 0 2 1 0 1 0 0;
                   1 0 0 0 0 1 0 0 1 0 0 1 0 0 0 0 1;
                   1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1'
    []
    [Assembly_445wo_112_poison]
        type = AssemblyMeshGenerator
        assembly_type = 23
        inputs = 'pin_445wo pin_445wo_poison pin_guide_tube'
        pattern = '1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1;
                   1 0 0 0 0 1 0 0 1 0 0 1 0 0 0 0 1;
                   0 0 0 1 1 2 1 1 2 1 1 2 1 1 0 0 0;
                   0 0 1 2 1 1 0 0 1 0 0 1 1 2 1 0 0;
                   0 0 1 1 0 1 0 0 1 0 0 1 0 1 1 0 0;
                   0 1 2 1 1 2 1 1 2 1 1 2 1 1 2 1 0;
                   0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0;
                   0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0;
                   0 1 2 1 1 2 1 1 2 1 1 2 1 1 2 1 0;
                   0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0;
                   0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0;
                   0 1 2 1 1 2 1 1 2 1 1 2 1 1 2 1 0;
                   0 0 1 1 0 1 0 0 1 0 0 1 0 1 1 0 0;
                   0 0 1 2 1 1 0 0 1 0 0 1 1 2 1 0 0;
                   0 0 0 1 1 2 1 1 2 1 1 2 1 1 0 0 0;
                   1 0 0 0 0 1 0 0 1 0 0 1 0 0 0 0 1;
                   1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1'
    []

    [Core]
        type = CoreMeshGenerator 
        inputs = 'Assembly_235wo Assembly_340wo_28_poison Assembly_340wo_44_poison Assembly_340wo_88_poison Assembly_445wo_72_poison Assembly_445wo_88_poison Assembly_445wo_112_poison Empty'
        dummy_assembly_name = Empty
        pattern =  '7 7 7 7 7 7 5 5 5 7 7 7 7 7 7;
                    7 7 7 7 6 6 4 0 4 6 6 7 7 7 7;
                    7 7 7 6 6 1 0 1 0 1 6 6 7 7 7;
                    7 7 6 0 2 0 3 0 3 0 2 0 6 7 7;
                    7 6 6 2 0 3 0 3 0 3 0 2 6 6 7;                   
                    7 6 1 0 3 0 3 0 3 0 3 0 1 6 7;
                    5 4 0 3 0 3 0 3 0 3 0 3 0 4 5;
                    5 0 1 0 3 0 3 0 3 0 3 0 1 0 5;
                    5 4 0 3 0 3 0 3 0 3 0 3 0 4 5;
                    7 6 1 0 3 0 3 0 3 0 3 0 1 6 7;
                    7 6 6 2 0 3 0 3 0 3 0 2 6 6 7; 
                    7 7 6 0 2 0 3 0 3 0 2 0 6 7 7;
                    7 7 7 6 6 1 0 1 0 1 6 6 7 7 7;
                    7 7 7 7 6 6 4 0 4 6 6 7 7 7 7;
                    7 7 7 7 7 7 5 5 5 7 7 7 7 7 7'
    []

    [WaterRing]
        type = PeripheralRingMeshGenerator
        input = Core
        peripheral_layer_num = 1
        peripheral_ring_radius = 170
        input_mesh_external_boundary = 1000
        external_boundary_id = 2000
        peripheral_ring_block_id = ${water_block_id}
        peripheral_ring_block_name = water
    []

    [SteelWall]
        type = PeripheralRingMeshGenerator
        input = WaterRing
        peripheral_layer_num = 1
        peripheral_ring_radius = 190
        input_mesh_external_boundary = 2000
        peripheral_ring_block_id = ${steel_block_id}
        peripheral_ring_block_name = steel
    []
    
    final_generator = SteelWall
  []
