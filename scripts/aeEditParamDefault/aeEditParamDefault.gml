/// @description aeEditParamDefault(id)
/// @param id
var con = argument0,name = param_name(con),def = param_default(con);
var val = get_string("enter new default for "+name+"?",string(def));
                    if string_number(val)==val and val!=""{
                        ds_map_replace(con,"default",real(val));
                    }
