
cms.Page = function () {
    var self = this;

    self.popupYn = POPUP_YN;
    self.popupUrl = POPUP_URL;
    self.popupLinkTarget = POPUP_LINK_TARGET;
    
    self.popupCloseTodayButton = $("#popup-close-today-button");
    self.popupCloseButton = $("#popup-close-button");
    self.popupImageLink = $("#popup-image-link");
    
    self.init();
};

cms.Page.prototype.init = function () {
    var self = this;
    
 // 팝업 오늘하루 닫기 버튼 클릭 이벤트
    self.popupCloseTodayButton.click(function(e){
    	e.preventDefault();
    	
    	// 쿠키에 팝업 오늘하루 닫기 정보 저장
    	$.cookie('popupCloseToday', "1", { expires: 1, path: '/' });
    	
    	self.popupCloseButton.trigger("click");
    });
    
    // 팝업 이미지 클릭 이벤트
    self.popupImageLink.click(function(e){
    	e.preventDefault();
    	
    	var newWindowYn = self.popupLinkTarget=="_blank" ? "Y" : "N";
    	
    	locationGo(null, self.popupUrl, newWindowYn, newWindowYn=="N" ? "1" : "");
    	
    	self.popupCloseButton.trigger("click");
    });
};

$(function () {
    cms.page = new cms.Page();
});