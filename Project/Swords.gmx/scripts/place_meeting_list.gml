/// place_meeting_list(myself,checkfor)
//
//  Returns a list data structure populated with the ids of instances 
//  colliding with a given object, or noone if no instances found.
//
//
//
/// modified from: GMLscripts.com/license
{
    var me,check, dsid,i;
    me = argument0;
    check = argument1;
    dsid = ds_list_create();
    // TESTING
    //draw_rectangle(x1, y1, x2, y2, true);
    //=========
    with (check) {
        if (id != other.id) {
            i = place_meeting(x, y, me);
            if (i) {
                ds_list_add(dsid, id);
            }
        }
    }
    if (ds_list_empty(dsid)) {
        ds_list_destroy(dsid);
        dsid = noone;
    }
    return dsid;
}
