SELECT 
    f.omni_stid, 
    f.frame_sn, 
    f.sw_verno, 
    f.omni_type, 
    f.omni_name, 
    f.cab_gen, 
    f.cab_type, 
    f.cab_frame, 
    f.cpckey,
    d.cab_no -- Drawer-specific data
FROM frames f
LEFT JOIN drawers d 
    ON f.omni_stid = d.omni_stid 
    AND f.cpckey = d.cpckey
    AND (
        (f.cab_frame = 'MAIN' AND d.cab_no = '0') OR 
        (f.cab_frame IN ('AUX1', 'AUX2') AND d.cab_no = '1')
    )
WHERE f.omni_stid = {{ table2.selectedRow.omni_stid }};

