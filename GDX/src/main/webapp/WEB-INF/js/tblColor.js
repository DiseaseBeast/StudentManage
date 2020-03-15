function altRows(id){
    if(document.getElementsByTagName){
        var table = document.getElementById(id);
        var rows = table.getElementsByTagName("tr");
        for(i = 0; i < rows.length; i++){
            if(i % 2 == 0){
                rows[i].className= 'aol';
            }else{
                rows[i].className = "asc";
            }
        }
    }
}
window.onload=function(){
    altRows('alternatecolor');
}