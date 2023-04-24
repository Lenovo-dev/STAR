<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원가입|STAR</title>
    <link rel="stylesheet" href="terms.css">
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="terms.js"></script>
</head>

<body>
    <div class="layer_fix pop_login pop_mem_reserve">
        <section>
            <div class="fix_title">
                <strong>STAR 약관 동의</strong>
            </div>

            <div class="terms_agree">
                <p class="all_check">
                    <label><input type="checkbox" id="checkAll" name="checkAll" class="inp_chk_02 chk_default">전체
                        동의</label>
                </p>
                <p>
                    <input type="checkbox" id="ess" name="check" value="N"
                        class="inp_chk_02 chk_default terms_checkbox" require>
                    <a href="https://www.goodchoice.kr/more/terms/terms" target="_blank">이용약관 동의</a>
                    <span>(필수)</span>
                </p>
                <p>
                    <input type="checkbox" id="ess" name="check" value="N"
                        class="inp_chk_02 chk_default terms_checkbox" require="">
                    <a href="https://www.goodchoice.kr/more/over14yearsOldAgree " id="fourteen" target="_blank">만 14세 이상
                        확인 </a><span> (필수)</span>
                </p>
                <p>
                    <input type="checkbox" id="ess" name="check" value="N"
                        class="inp_chk_02 chk_default terms_checkbox" require="">
                    <a href="https://www.goodchoice.kr/more/privacyRequire" target="_blank">개인정보 수집 및 이용 동의 </a><span>
                        (필수)</span>
                </p>
                <p>
                    <input type="checkbox" id="privacy_auxiliary_policy" name="check" value="N"
                        class="inp_chk_02 chk_default terms_checkbox">
                    <a href="https://www.goodchoice.kr/more/privacySelect" target="_blank">개인정보 수집 및 이용 동의</a> (선택)
                </p>
                <p>
                    <input type="checkbox" id="marketing" name="check" value="N"
                        class="inp_chk_02 chk_default terms_checkbox">
                    <a href="http://api3.goodchoice.kr/more/marketingAgree" target="_blank">마케팅 알림 수신동의</a> (선택)
                </p>
                <p>
                    <input type="checkbox" id="location" name="check" value="N"
                        class="inp_chk_02 chk_default terms_checkbox">
                    <a href="https://www.goodchoice.kr/more/terms/location" target="_blank">위치기반 서비스 이용약관 동의</a> (선택)
                </p>

                <button type="button" class="btn_link" name="check" id="terms_agree_btn" >
                    <span>다음</span>
                </button>
            </div>
        </section>
    </div>
</body>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
    $(document).ready(function () {
        $("#checkAll").click(function () {
            if ($("#checkAll").is(":checked")) {
                $("input[name=check]").prop("checked", true);
                $("#terms_agree_btn").css("background", "red");
            }
            else {
                $("input[name=check]").prop("checked", false);
                $("#terms_agree_btn").css("background", "#fafafa");
            } 
        });

        $("input[name=check]").click(function () {
            var total = $("input[name=check]").length;
            var checked = $("input[name=check]:checked").length;
            var ess_checked = $("#ess:checked").length;

            if (total != checked) {
                $("#checkAll").prop("checked", false);
                $("#terms_agree_btn").css("background", "#fafafa");
            }
            else {
                $("#checkAll").prop("checked", true);
            } 

            if(ess_checked == 3){
                $("#terms_agree_btn").css("background", "red");
            }


        });
    });



</script>

</html>