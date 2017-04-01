$(document).ready(function() {
	var count = 10;
	var clock;
	//点击获取验证码事件
	$("#getCode").click(function() {
		//获取邮箱
		var email = $("#regEmail").val();
		$.ajax({
			type:"post",
			url:"userGetCode",
			data: {email: email},
			async:true,
			success: function(data) {
				if (data.status == 1) {
					$("#getCode").attr("disabled", true);
					clock = setInterval(function(){
						$("#getCode").val("重新获取" + count);
						count--;
						if (count == 0) {
							clearInterval(clock);
							setTimeout(function(){
								count = 10;
								$("#getCode").val("获取验证码");
								$("#getCode").attr("disabled", false);
							}, 1000);
						}
					}, 1000);
				} else {
				}
			}
		});
	})
})