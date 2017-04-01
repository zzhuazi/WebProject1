$(document).ready(function(){
	//checkbox全选事件
	$("#allChecked").click(function(){
		if(this.checked) {
			$("input[name = id]:checkbox").prop("checked", true);
			var goodsCSum = 0;
			var total = 0.00;
			$('input[name = count]').each(function(){
				goodsCSum += parseInt($(this).val());
			});
			$('span.sub-total').each(function(){
				total += parseFloat($(this).text());
			});
			$("#goodsCSum").text(goodsCSum);
			$("#total").text(total);
		} else {
			$("input[name = id]:checkbox").prop("checked", false);
			$("#goodsCSum").text("0");
			$("#total").text(0.00);
		}
	});
	//各购物车checkbox事件
	$("input[name = id]:checkbox").click(function(){
		if(!this.checked) {
			$("#allChecked").prop("checked", false);
		}
		var goodsCSum = 0;
		var total = 0.00;
		$("input[name = id]:checkbox").each(function() {
			if(this.checked) {
				//总计被选中的栏
				goodsCSum += parseInt($(this).parent().parent().find("input[name = count]").val());
				total += parseFloat($(this).parent().parent().find("span.sub-total").text());
			}
		})
		$("#goodsCSum").text(goodsCSum);
		$("#total").text(total);
	});
});