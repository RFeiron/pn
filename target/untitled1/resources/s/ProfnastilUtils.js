function _ProfnastilUtils(){

    this.deleteProfnastil = function(id){
        if(confirm("Are you sure?")){
            window.location = "/deleteProfnastil/" + id;
        }
    }
}

var ProfnastilUtils = new _ProfnastilUtils();