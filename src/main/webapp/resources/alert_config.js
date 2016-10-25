  $('.tip_editor .radio_item').click(function(e){
 $('.tip_editor .radio_item').removeClass("radio_item_click");
  $(this).addClass("radio_item_click");
 
 });

 

$(".alert_right_panel .alert_color:eq(6)").ColorPicker({
	onSubmit: function(hsb, hex, rgb, el) {
		$(el).val(hex); 
		$(el).ColorPickerHide();
		$(".alert_ensure").css("color","#"+hex);
	 

	},
	onBeforeShow: function () {
		$(this).ColorPickerSetColor(this.value);
	}
})
.bind('keyup', function(){
	$(this).ColorPickerSetColor(this.value);
});
$(".alert_right_panel .alert_color:eq(5)").ColorPicker({
	onSubmit: function(hsb, hex, rgb, el) {
		$(el).val(hex); 
		$(el).ColorPickerHide();
		$(".alert_ensure").css("background-color","#"+hex);
	 

	},
	onBeforeShow: function () {
		$(this).ColorPickerSetColor(this.value);
	}
})
.bind('keyup', function(){
	$(this).ColorPickerSetColor(this.value);
});


$(".alert_right_panel .alert_color:eq(4)").ColorPicker({
	onSubmit: function(hsb, hex, rgb, el) {
		$(el).val(hex); 
		$(el).ColorPickerHide();
		$(".tip_demo").css("color","#"+hex);
	 

	},
	onBeforeShow: function () {
		$(this).ColorPickerSetColor(this.value);
	}
})
.bind('keyup', function(){
	$(this).ColorPickerSetColor(this.value);
});


$(".alert_right_panel .alert_color:eq(3)").ColorPicker({
	onSubmit: function(hsb, hex, rgb, el) {
		$(el).val(hex); 
		$(el).ColorPickerHide();
		$(".tip_head").css("color","#"+hex);
	 

	},
	onBeforeShow: function () {
		$(this).ColorPickerSetColor(this.value);
	}
})
.bind('keyup', function(){
	$(this).ColorPickerSetColor(this.value);
});


$(".alert_right_panel .alert_color:eq(0)").ColorPicker({
	onSubmit: function(hsb, hex, rgb, el) {
		$(el).val(hex); 
		$(el).ColorPickerHide();
		$(".tip_head").css("background-color","#"+hex);
	 

	},
	onBeforeShow: function () {
		$(this).ColorPickerSetColor(this.value);
	}
})
.bind('keyup', function(){
	$(this).ColorPickerSetColor(this.value);
});

$(".alert_right_panel .alert_color:eq(1)").ColorPicker({
	onSubmit: function(hsb, hex, rgb, el) {
		$(el).val(hex); 
		$(el).ColorPickerHide();
		$(".tip_demo").css("background-color","#"+hex);
	 

	},
	onBeforeShow: function () {
		$(this).ColorPickerSetColor(this.value);
	}
})
.bind('keyup', function(){
	$(this).ColorPickerSetColor(this.value);
});

$(".alert_right_panel .alert_color:eq(2)").ColorPicker({
	onSubmit: function(hsb, hex, rgb, el) {
		$(el).val(hex); 
		$(el).ColorPickerHide();
		$(".tip_foot").css("background-color","#"+hex);
	 

	},
	onBeforeShow: function () {
		$(this).ColorPickerSetColor(this.value);
	}
})
.bind('keyup', function(){
	$(this).ColorPickerSetColor(this.value);
});