/**
 * 菜单重置
 * @param {Object} e
 */
function resetMenuA(e){
	
	var ul = $(e).parent().parent();
	var lis = $(ul).children();
	$.each(lis, function(key, li) {
		//重置li样式
		$(lis[key]).removeClass("li-border");
		//重置a标签样式
		$(lis[key]).children(":first").removeClass("menu1-visited");
		//重置a标签中i标签的图标样式
		var iClass = "menu1-ico-" + (key + 1);
		$(lis[key]).children(":first").children(":first").removeClass(iClass);
		//重置a标签兄弟节点div的样式
		$(lis[key]).children(":first").next().addClass("hidden");
	});

}

/**
 * 展开子菜单选项
 * @param {Object} e a标签自己
 * @param {Object} id 第id个a标签
 */
function showChildren(e, id){
	if ($(e).hasClass("menu1-visited")) {	//已经展开
		$(e).parent().removeClass("li-border");
		$(e).removeClass("menu1-visited");
		var iClass = "menu1-ico-" + id;
		$(e).children(":first").removeClass(iClass);
		$(e).next().addClass("hidden");
	} else {
		//重置菜单
		resetMenuA(e);
		$(e).parent().addClass("li-border");
		$(e).addClass("menu1-visited");
		var iClass = "menu1-ico-" + id;
		$(e).children(":first").addClass(iClass);
		$(e).next().removeClass("hidden");
	}
	
}

function showTri(){
	$("#header .header-right div").slideToggle();
}
