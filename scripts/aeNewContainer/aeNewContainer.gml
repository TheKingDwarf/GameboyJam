with(objAudioEditor){
var val = get_string("name the new container","");
if val!=""{
    var new = container_create(val);
    if new!=-1{
        ds_list_add(containers,string(new));
        editing=new;
        editing_audio = false;
        save_audioedit();
        }
}
}
