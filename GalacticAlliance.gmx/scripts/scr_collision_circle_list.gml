{
    var x1,y1,radius,obj,prec,notme,dsid,i;
    x1 = argument0;
    y1 = argument1;
    radius = argument2;
    obj = argument3;
    prec = argument4;
    notme = argument5;
    dsid = ds_list_create();
    var tomb;
    with (obj) {
        if (!notme || id != other.id) {
            i = collision_circle(x1,y1,radius,id,prec,false);
            if (i != noone) ds_list_add(dsid,i);
        }
    }
    if (ds_list_empty(dsid)) {
        ds_list_destroy(dsid);
        dsid = noone;
    }
    return dsid;
}
