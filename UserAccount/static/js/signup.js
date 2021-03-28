
function pwCheck() {
    var pw = document.getElementById('pw1').value;
    var pattern1 = /[0-9]/;
    var pattern2 = /[a-zA-Z]/;
    var pattern3 = /[~!@\#$%<>^&*]/;

    if (!pattern1.test(pw)||!pattern2.test(pw)||!pattern3.test(pw)||pw.length < 6) {
        document.getElementById('lenCheck').innerHTML='비밀번호 조건을 만족해주세요.';
        document.getElementById('lenCheck').style.color='#f8756c';
    }
    else {
        document.getElementById('lenCheck').innerHTML='';

        if (document.getElementById('pw2').value!=''){
            if(document.getElementById('pw1').value==document.getElementById('pw2').value) {
                document.getElementById('pwCheck').innerHTML='비밀번호가 일치합니다.';
                document.getElementById('pwCheck').style.color='#6ca4f8';
                judgeJoin();
            }
            else {
                document.getElementById('pwCheck').innerHTML='비밀번호가 일치하지 않습니다.';
                document.getElementById('pwCheck').style.color='#f8756c';
            }
        }
    }
}


function judgeJoin(){
    $(".joinBtn").prop("disabled", false);
    $(".joinBtn").css("background-color", "#6b6351");


    const element = document.querySelector("#joinBtn");

    element.addEventListener("mouseover", event => {
    // console.log("Mouse in");
    $(".joinBtn").css("background-color", "#a39a86");
    $(".joinBtn").css("color", "white");

    });

    element.addEventListener("mouseout", event => {
    // console.log("Mouse out");
    $(".joinBtn").css("background-color", "#6b6351");
    $(".joinBtn").css("color", "black");

    });
    }

