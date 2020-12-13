CLASS zcl_dummy_data DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_dummy_data IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    "Fill developers data
    DATA lt_devs  TYPE TABLE OF ztrap_dev.
    DATA lt_tasks TYPE TABLE OF ztrap_task.
    DATA lt_projs TYPE TABLE OF zrap_tsk_proj.

    TRY.

        lt_devs = VALUE #( ( dev_id = 'eab16d3a-e3ba-4aa6'  name = 'Joe Midas'       devlevel = 1 )
                           ( dev_id = '2fc012f6-ce19-43ed'  name = 'Louise Fetcher'  devlevel = 2 )
                           ( dev_id = '34f2ecda-0e2d-473f'  name = 'Eric Bose'       devlevel = 2 )
                           ( dev_id = '149e5462-b872-49ef'  name = 'Pedro Correia'   devlevel = 3 ) ).

        lt_tasks = VALUE #( ( task_id       = cl_system_uuid=>create_uuid_x16_static( )
                              artifacts     = 9
                              assigned_dev  = 'eab16d3a-e3ba-4aa6'
                              complexity    = 1
                              dev_status    = 'D'
                              start_date    = '20201110'
                              end_date      = '20201113'
                              detail        = 'Logging API for all master data APIs'
                              project_id    = '069f470d-8e1a-4ffc-87f1-e3a1d372b0af' )
                            ( task_id       = cl_system_uuid=>create_uuid_x16_static( )
                              artifacts     = 22
                              assigned_dev  = '2fc012f6-ce19-43ed'
                              complexity    = 3
                              dev_status    = 'T'
                              start_date    = '20201110'
                              end_date      = '20201120'
                              detail        = 'Master Data propagation v2'
                              project_id    = '069f470d-8e1a-4ffc-87f1-e3a1d372b0af' )
                            ( task_id       = cl_system_uuid=>create_uuid_x16_static( )
                              artifacts     = 5
                              assigned_dev  = '2fc012f6-ce19-43ed'
                              complexity    = 2
                              dev_status    = 'P'
                              start_date    = '20201112'
                              end_date      = '20201112'
                              detail        = 'WebAPI definition for PO'
                              project_id    = '069f470d-8e1a-4ffc-87f1-e3a1d372b0af' )
                            ( task_id       = cl_system_uuid=>create_uuid_x16_static( )
                              artifacts     = 16
                              assigned_dev  = '149e5462-b872-49ef'
                              complexity    = 3
                              dev_status    = ''
                              start_date    = '20201117'
                              end_date      = '20201122'
                              detail        = 'Security audit logpoints'
                              project_id    = '069f470d-8e1a-4ffc-87f1-e3a1d372b0af' ) ).

        lt_projs = VALUE #( ( proj_id       = '069f470d-8e1a-4ffc-87f1-e3a1d372b0af'
                              project_code  = 'PRJ2020001'
                              detail        = 'New system for centralized Master Data management' ) ).


      CATCH cx_uuid_error.
        ASSERT 1 = 2. "This shouldn't crash
    ENDTRY.

    INSERT ztrap_dev FROM TABLE @lt_devs.
    INSERT ztrap_task FROM TABLE @lt_tasks.
    INSERT zrap_tsk_proj FROM TABLE @lt_projs.

    COMMIT WORK.
  ENDMETHOD.
ENDCLASS.
