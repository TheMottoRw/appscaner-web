  function isLoggedIn(){
        if(localStorage.hasOwnProperty("scanner_user_id")){
            if(localStorage.getItem("scanner_user_id")!=0){
                $("#loggedin_user").html(localStorage.getItem("scanner_user_name"));
            }else{
                window.location='/login';
            }
        }else {
            window.location='/login';
        }
    }

    function logout(){
        localStorage.removeItem("scanner_user_id");
        localStorage.removeItem("scanner_user_name");
        window.location='/login';
    }
    function setLoginSession(id,username){
        localStorage.setItem("scanner_user_id",id);
        localStorage.setItem("scanner_user_name",username);
    }
