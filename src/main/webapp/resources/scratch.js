

function loadFromFela(script,parent){
	 var editor=$(parent+" .scratch_editor");
	 var codeArr=script.split("\n");
	 var lockLevel1=false;
	 var lockLevel1Object=null;
	 var lockLevel2=false;
	 var lockLevel2Object=null;
 
     for(var i in codeArr){
    	 if(codeArr[i].indexOf("那么结束")==0)   lockLevel1=false;
     	 if(codeArr[i].indexOf("则结束")==0)   lockLevel1=false;
     	 if(codeArr[i].indexOf("否则结束")==0)   lockLevel1=false;
		 
    	 if(lockLevel1){
    		 if(codeArr[i]!=""){
    			 if(codeArr[i].indexOf("那么2结束")==0)   lockLevel2=false;
    	     	 if(codeArr[i].indexOf("则2结束")==0)   lockLevel2=false;
    	     	 if(codeArr[i].indexOf("否则2结束")==0)   lockLevel2=false;
    			 
    			 if(lockLevel2){
                
    				 if(codeArr[i].indexOf("失效")==0){
        				 
     					var h=$("<div style='margin-left:27px;margin-bottom:4px '><span class='disable' style='float:none;'>失效</span><input type='text' value='"+codeArr[i].split(" ")[1]+"' style='height:22px;width:310px;' class='var'></div>");
     					h.contextmenu(function(e){
     						codeElement=new Array();
     						codeElement.push($(this));
     				 
     						$(".right_menu2").css("left",e.clientX);
     						$(".right_menu2").css("top",e.clientY);
     						$(".right_menu2").slideDown("fast");
     						 
     						});
     			        lockLevel2Object.append(h);
     			 }
     			 if(codeArr[i].indexOf("清空")==0){
     				 
     					var h=$("<div style='margin-left:27px;margin-bottom:4px '><span class='empty' style='float:none;'>清空</span><input type='text' value='"+codeArr[i].split(" ")[1]+"' style='height:22px;width:310px;' class='var'></div>");
     					h.contextmenu(function(e){
     						codeElement=new Array();
     						codeElement.push($(this));
     				 
     						$(".right_menu2").css("left",e.clientX);
     						$(".right_menu2").css("top",e.clientY);
     						$(".right_menu2").slideDown("fast");
     						 
     						});
     			        lockLevel2Object.append(h);
     			 }
     			 if(codeArr[i].indexOf("提示")==0){
     				 
     					var h=$("<div style='margin-left:27px;margin-bottom:4px '><span class='alert' style='float:none;'>提示</span><input type='text' value='' style='height:22px;width:310px;' class='var'></div>");
     					var temp=codeArr[i].split(" ");
        				temp.splice(0,1); 
        				h.find(".var").val(temp.join(" "));
     					h.contextmenu(function(e){
     						codeElement=new Array();
     						codeElement.push($(this));
     				
     						$(".right_menu2").css("left",e.clientX);
     						$(".right_menu2").css("top",e.clientY);
     						$(".right_menu2").slideDown("fast");
     						 
     						});
     			        lockLevel2Object.append(h);
     			 }
     			 if(codeArr[i].indexOf("异常")==0){
     				 
     					var h=$("<div style='margin-left:27px;margin-bottom:4px '><span class='confirm' style='float:none;'>异常</span><input type='text' value='"+codeArr[i].split(" ")[1]+"' style='height:22px;width:310px;' class='var'></div>");
     					var temp=codeArr[i].split(" ");
        				temp.splice(0,1); 
        				h.find(".var").val(temp.join(" "));
     					h.contextmenu(function(e){
     						codeElement=new Array();
     						codeElement.push($(this));
     				 
     						$(".right_menu2").css("left",e.clientX);
     						$(".right_menu2").css("top",e.clientY);
     						$(".right_menu2").slideDown("fast");
     						 
     						});
     			        lockLevel2Object.append(h);
     			 }
     			 if(codeArr[i].indexOf("弹出")==0){
     				 
     					var h=$("<div style='margin-left:27px;margin-bottom:4px '><span class='openWin' style='float:none;'>弹出</span><input type='text' value='"+codeArr[i].split(" ")[1]+"' style='height:22px;width:310px;' onclick=openAlert(this) class='var'></div>");
     					h.contextmenu(function(e){
     						codeElement=new Array();
     						codeElement.push($(this));
     				 
     						$(".right_menu2").css("left",e.clientX);
     						$(".right_menu2").css("top",e.clientY);
     						$(".right_menu2").slideDown("fast");
     						 
     						});
     			        lockLevel2Object.append(h);
     			 }
     			 if(codeArr[i].indexOf("跳转")==0){
     				 
  					var h=$("<div style='margin-left:27px;margin-bottom:4px '><span class='location' style='float:none;'>跳转</span><input type='text' value='"+codeArr[i].split(" ")[1]+"' style='height:22px;width:310px;' class='var'></div>");
  					h.contextmenu(function(e){
  						codeElement=new Array();
  						codeElement.push($(this));
  				 
  						$(".right_menu2").css("left",e.clientX);
  						$(".right_menu2").css("top",e.clientY);
  						$(".right_menu2").slideDown("fast");
  						 
  						});
  			        lockLevel2Object.append(h);
  			 }
     			 if(codeArr[i].indexOf("页面刷新")==0){
     				 
     					var h=$("<div style='margin-left:27px;margin-bottom:4px '><span class='refresh' style='float:none;'>页面刷新</span></div>");
     					h.contextmenu(function(e){
     						codeElement=new Array();
     						codeElement.push($(this));
     				 
     						$(".right_menu2").css("left",e.clientX);
     						$(".right_menu2").css("top",e.clientY);
     						$(".right_menu2").slideDown("fast");
     						 
     						});
     			        lockLevel2Object.append(h);
     			 }
     			 if(codeArr[i].indexOf("退出")==0){
     				 
     					var h=$("<div style='margin-left:27px;margin-bottom:4px '><span class='return' style='float:none;'>退出</span></div>");
     					h.contextmenu(function(e){
     						codeElement=new Array();
     						codeElement.push($(this));
     				 
     						$(".right_menu2").css("left",e.clientX);
     						$(".right_menu2").css("top",e.clientY);
     						$(".right_menu2").slideDown("fast");
     						 
     						});
     			        lockLevel2Object.append(h);
     			 }
     			 if(codeArr[i].indexOf("赋值")==0){
     					var h=$("<div style=' margin-left:27px; margin-bottom:4px '><span class='val' style='float:none;'>赋值</span><input type='text' style='height:22px;width:66px;' value='"+codeArr[i].split(" ")[1]+"' class='var'><span class='val' style='float:none;'>为</span><input type='text' value='' onclick=openValue(this) style='height:22px;width:200px;' class='var'></div>");
     					var temp=codeArr[i].split(" ");
        				temp.splice(0,2); 
        				h.find(".var:last").val(temp.join(" "));
     					h.contextmenu(function(e){
     						codeElement=new Array();
     						codeElement.push($(this));
     				 
     						$(".right_menu2").css("left",e.clientX);
     						$(".right_menu2").css("top",e.clientY);
     						$(".right_menu2").slideDown("fast");
     						 
     						});
     			        lockLevel2Object.append(h);
     			 }
     			 
     		 
    				 continue;
    			 }
    			 if(codeArr[i].indexOf("那么2开始")==0){
    					var b=$("<div class='bif2'><div style='position:absolute;top:3px;left:3px;'>那么</div><div style='width:10px;height:20px;'></div></div>");
    					initIfBodyLevel2(b);	
     				lockLevel1Object.append(b);
     				lockLevel2=true;
     				lockLevel2Object=b;
     		 }
     		 if(codeArr[i].indexOf("则2开始")==0){
     			var b=$("<div class='bif2'><div style='position:absolute;top:3px;left:3px;'>则</div><div style='width:10px;height:20px;'></div></div>");
    			initIfBodyLevel2(b);	
     				lockLevel1Object.append(b);
     				lockLevel2=true;
     				lockLevel2Object=b;
     		 }
     		
     		 if(codeArr[i].indexOf("否则2开始")==0){
     			var b=$("<div class='bif2'><div style='position:absolute;top:3px;left:3px;'>否则</div><div style='width:10px;height:20px;'></div></div>");
    			initIfBodyLevel2(b);	
     				lockLevel1Object.append(b);
     				lockLevel2=true;
     				lockLevel2Object=b;
     		 }
    			 if(codeArr[i].indexOf("如果2 ")==0){
    				
    			     var h=$("<div class='eif2' ><div style='position:absolute;top:3px;left:3px;'>如果</div><div style='width:10px;height:20px;'></div></div>");
    			 	
        		     initIfHead(h);	
        		     lockLevel1Object.append(h);
        			 h.contextmenu(function(e){
        				 codeElement=new Array();
        				 
     					if($(this).next().text()=="那么"){
     						codeElement.push($(this).next());
     						codeElement.push($(this));
     					}else{
     					 
     						codeElement.push($(this).next().next());
     						codeElement.push($(this).next());
     						codeElement.push($(this));
     					}
     					$(".right_menu2").css("left",e.clientX);
     					$(".right_menu2").css("top",e.clientY);
     					$(".right_menu2").slideDown("fast");
     					 
     					});
        			 var row=codeArr[i].split(" ");
        			 for(var j in row){
        				 if(j==0||!row[j]) continue;
        				if(row[j]=="+"){
        			  h.append("<span class='char'>+</span>");
        			  
        				}else if(row[j]=="−"){
        					h.append("<span class='char'>&minus;</span>");
        				}else if(row[j]=="×"){
        					h.append("<span class='char'>&times;</span>");
        				}else if(row[j]=="÷"){
        					h.append("<span class='char'>&divide;</span>");
        				}else if(row[j]=="="){
        					h.append("<span class='char'>=</span>");
        				}else if(row[j]=="包含"){
        					h.append("<span class='char' style='font-size:13px;'>包含</span>");
        				}else if(row[j]=="不包含"){
        					h.append("<span class='char' style='font-size:13px;'>不包含</span>");
        				}else if(row[j]=="并且"){
        					h.append("<span class='and2'>并且</span>");
        				}else if(row[j]=="或者"){
        					h.append("<span class='or2'>或者</span>");
        				}else if(row[j]=="≠"){
        					h.append("<span class='char'>&ne;</span>");
        				}else if(row[j]=="<"){
        					h.append("<span class='char'>&lt;</span>");
        				}else if(row[j]==">"){
        					h.append("<span class='char'>&gt;</span>");
        				}else if(row[j]=="≥"){
        					h.append("<span class='char'>&ge;</span>");
        				}else if(row[j]=="≤"){
        					h.append("<span class='char'>&le;</span>");
        				}else{
        					if(h.children().length==2)
        					h.append("<input type='text' class='var' value='"+row[j]+"' style='margin-left:27px;'>");
        					else
        					h.append("<input type='text' class='var' value='"+row[j]+"'  >");
            					
        				}
        				
        				
        				  
        			 }
        		 }
    			 if(codeArr[i].indexOf("失效")==0){
    				 
    					var h=$("<div style='margin-left:27px;margin-bottom:4px '><span class='disable' style='float:none;'>失效</span><input type='text' value='"+codeArr[i].split(" ")[1]+"' style='height:22px;width:370px;' class='var'></div>");
    					h.contextmenu(function(e){
    						codeElement=new Array();
    						codeElement.push($(this));
    				 
    						$(".right_menu2").css("left",e.clientX);
    						$(".right_menu2").css("top",e.clientY);
    						$(".right_menu2").slideDown("fast");
    						 
    						});
    			        lockLevel1Object.append(h);
    			 }
    			 if(codeArr[i].indexOf("清空")==0){
    				 
    					var h=$("<div style='margin-left:27px;margin-bottom:4px '><span class='empty' style='float:none;'>清空</span><input type='text' value='"+codeArr[i].split(" ")[1]+"' style='height:22px;width:370px;' class='var'></div>");
    					h.contextmenu(function(e){
    						codeElement=new Array();
    						codeElement.push($(this));
    				 
    						$(".right_menu2").css("left",e.clientX);
    						$(".right_menu2").css("top",e.clientY);
    						$(".right_menu2").slideDown("fast");
    						 
    						});
    			        lockLevel1Object.append(h);
    			 }
    			 if(codeArr[i].indexOf("提示")==0){
    				 
    					var h=$("<div style='margin-left:27px;margin-bottom:4px '><span class='alert' style='float:none;'>提示</span><input type='text' value='"+codeArr[i].split(" ")[1]+"' style='height:22px;width:370px;' class='var'></div>");
    					var temp=codeArr[i].split(" ");
        				temp.splice(0,1); 
        				h.find(".var").val(temp.join(" "));
    					h.contextmenu(function(e){
    						codeElement=new Array();
    						codeElement.push($(this));
    						  
    						$(".right_menu2").css("left",e.clientX);
    						$(".right_menu2").css("top",e.clientY);
    						$(".right_menu2").slideDown("fast");
    						 
    						});
    			        lockLevel1Object.append(h);
    			 }
    			 if(codeArr[i].indexOf("异常")==0){
    				 
    					var h=$("<div style='margin-left:27px;margin-bottom:4px '><span class='confirm' style='float:none;'>异常</span><input type='text' value='"+codeArr[i].split(" ")[1]+"' style='height:22px;width:370px;' class='var'></div>");
    					var temp=codeArr[i].split(" ");
        				temp.splice(0,1); 
        				h.find(".var").val(temp.join(" "));
    					h.contextmenu(function(e){
    						codeElement=new Array();
    						codeElement.push($(this));
    				 
    						$(".right_menu2").css("left",e.clientX);
    						$(".right_menu2").css("top",e.clientY);
    						$(".right_menu2").slideDown("fast");
    						 
    						});
    			        lockLevel1Object.append(h);
    			 }
    			 if(codeArr[i].indexOf("弹出")==0){
    				 
    					var h=$("<div style='margin-left:27px;margin-bottom:4px '><span class='openWin' style='float:none;'>弹出</span><input type='text' value='"+codeArr[i].split(" ")[1]+"' style='height:22px;width:370px;' onclick=openAlert(this) class='var'></div>");
    					h.contextmenu(function(e){
    						codeElement=new Array();
    						codeElement.push($(this));
    				 
    						$(".right_menu2").css("left",e.clientX);
    						$(".right_menu2").css("top",e.clientY);
    						$(".right_menu2").slideDown("fast");
    						 
    						});
    			        lockLevel1Object.append(h);
    			 }
    			 if(codeArr[i].indexOf("跳转")==0){
    				 
 					var h=$("<div style='margin-left:27px;margin-bottom:4px '><span class='location' style='float:none;'>跳转</span><input type='text' value='"+codeArr[i].split(" ")[1]+"' style='height:22px;width:370px;' class='var'></div>");
 					h.contextmenu(function(e){
 						codeElement=new Array();
 						codeElement.push($(this));
 				 
 						$(".right_menu2").css("left",e.clientX);
 						$(".right_menu2").css("top",e.clientY);
 						$(".right_menu2").slideDown("fast");
 						 
 						});
 			        lockLevel1Object.append(h);
 			 }
    			 if(codeArr[i].indexOf("页面刷新")==0){
    				 
    					var h=$("<div style='margin-left:27px;margin-bottom:4px '><span class='refresh' style='float:none;'>页面刷新</span></div>");
    					h.contextmenu(function(e){
    						codeElement=new Array();
    						codeElement.push($(this));
    				 
    						$(".right_menu2").css("left",e.clientX);
    						$(".right_menu2").css("top",e.clientY);
    						$(".right_menu2").slideDown("fast");
    						 
    						});
    			        lockLevel1Object.append(h);
    			 }
    			 if(codeArr[i].indexOf("退出")==0){
    				 
    					var h=$("<div style='margin-left:27px;margin-bottom:4px '><span class='return' style='float:none;'>退出</span></div>");
    					h.contextmenu(function(e){
    						codeElement=new Array();
    						codeElement.push($(this));
    				 
    						$(".right_menu2").css("left",e.clientX);
    						$(".right_menu2").css("top",e.clientY);
    						$(".right_menu2").slideDown("fast");
    						 
    						});
    			        lockLevel1Object.append(h);
    			 }
    			 if(codeArr[i].indexOf("赋值")==0){
    					var h=$("<div style=' margin-left:27px; margin-bottom:4px '><span class='val' style='float:none;'>赋值</span><input type='text' style='height:22px;width:126px;' value='"+codeArr[i].split(" ")[1]+"' class='var'><span class='val' style='float:none;'>为</span><input type='text' value='' onclick=openValue(this) style='height:22px;width:200px;' class='var'></div>");
    					var temp=codeArr[i].split(" ");
        				temp.splice(0,2); 
        				h.find(".var:last").val(temp.join(" "));
    					h.contextmenu(function(e){
    						codeElement=new Array();
    						codeElement.push($(this));
    				 
    						$(".right_menu2").css("left",e.clientX);
    						$(".right_menu2").css("top",e.clientY);
    						$(".right_menu2").slideDown("fast");
    						 
    						});
    			        lockLevel1Object.append(h);
    			 }
    			 
    		 }
    		 
    		 continue ;
    	 }
    	 if(codeArr[i]!=""){
    		 if(codeArr[i].indexOf("清空")==0){
    				var h=$("<div style=' margin-bottom:4px '><span class='empty' style='float:none;'>清空</span><input type='text' value='"+codeArr[i].split(" ")[1]+"' style='height:22px;width:370px;' class='var'></div>");
    				h.contextmenu(function(e){
    					codeElement=new Array();
    					codeElement.push($(this));
    			 
    					$(".right_menu2").css("left",e.clientX);
    					$(".right_menu2").css("top",e.clientY);
    					$(".right_menu2").slideDown("fast");
    					 
    					});
    				editor.append(h);
    				 
    		 }
    		 if(codeArr[i].indexOf("提示")==0){
 
    			 var h=$("<div style=' margin-bottom:4px '><span class='alert' style='float:none;'>提示</span><input type='text' value='"+codeArr[i].split(" ")[1]+"' style='height:22px;width:370px;' class='var'></div>");
    				var temp=codeArr[i].split(" ");
    				temp.splice(0,1); 
    				h.find(".var").val(temp.join(" "));
    			 h.contextmenu(function(e){
    					codeElement=new Array();
    					codeElement.push($(this)); 
    					$(".right_menu2").css("left",e.clientX);
    					$(".right_menu2").css("top",e.clientY);
    					$(".right_menu2").slideDown("fast");
    					 
    					});
    				editor.append(h);
    				 
    		 }
    		 if(codeArr[i].indexOf("异常")==0){
    			 var h=$("<div style=' margin-bottom:4px '><span class='confirm' style='float:none;'>异常</span><input type='text' value='"+codeArr[i].split(" ")[1]+"' style='height:22px;width:370px;' class='var'></div>");
    				var temp=codeArr[i].split(" ");
    				temp.splice(0,1); 
    				h.find(".var").val(temp.join(" "));
    				
    			 h.contextmenu(function(e){
    					codeElement=new Array();
    					codeElement.push($(this));
    			 
    					$(".right_menu2").css("left",e.clientX);
    					$(".right_menu2").css("top",e.clientY);
    					$(".right_menu2").slideDown("fast");
    					 
    					});
    				editor.append(h);
    				 
    		 }
    		 if(codeArr[i].indexOf("页面刷新")==0){
    			 var h=$("<div style=' margin-bottom:4px '><span class='refresh' style='float:none;'>页面刷新</span></div>");
    						
    			 h.contextmenu(function(e){
    					codeElement=new Array();
    					codeElement.push($(this));
    			 
    					$(".right_menu2").css("left",e.clientX);
    					$(".right_menu2").css("top",e.clientY);
    					$(".right_menu2").slideDown("fast");
    					 
    					});
    				editor.append(h);
    				 
    		 }
    		 if(codeArr[i].indexOf("弹出")==0){
    			 var h=$("<div style=' margin-bottom:4px '><span class='openWin' style='float:none;'>弹出</span><input type='text' value='"+codeArr[i].split(" ")[1]+"' style='height:22px;width:370px;' onclick=openAlert(this) class='var'></div>");
    				h.contextmenu(function(e){
    					codeElement=new Array();
    					codeElement.push($(this));
    			 
    					$(".right_menu2").css("left",e.clientX);
    					$(".right_menu2").css("top",e.clientY);
    					$(".right_menu2").slideDown("fast");
    					 
    					});
    				editor.append(h);
    				 
    		 }
    		 if(codeArr[i].indexOf("跳转")==0){
    			 var h=$("<div style=' margin-bottom:4px '><span class='location' style='float:none;'>跳转</span><input type='text' value='"+codeArr[i].split(" ")[1]+"' style='height:22px;width:370px;' class='var'></div>");
    				h.contextmenu(function(e){
    					codeElement=new Array();
    					codeElement.push($(this));
    			 
    					$(".right_menu2").css("left",e.clientX);
    					$(".right_menu2").css("top",e.clientY);
    					$(".right_menu2").slideDown("fast");
    					 
    					});
    				editor.append(h);
    				 
    		 }
    	 
    		 if(codeArr[i].indexOf("赋值")==0){
    				var h=$("<div style=' margin-bottom:4px '><span class='val' style='float:none;'>赋值</span><input type='text' value='"+codeArr[i].split(" ")[1]+"' style='height:22px;width:126px;' class='var'><span class='val' style='float:none;'>为</span><input type='text' value='' onclick=openValue(this) style='height:22px;width:200px;' class='var'></div>");
    				var temp=codeArr[i].split(" ");
    				temp.splice(0,2); 
    				h.find(".var:last").val(temp.join(" "));
    				    h.contextmenu(function(e){
    					codeElement=new Array();
    					codeElement.push($(this));
    			 
    					$(".right_menu2").css("left",e.clientX);
    					$(".right_menu2").css("top",e.clientY);
    					$(".right_menu2").slideDown("fast");
    					 
    					});
    				editor.append(h);
    				 
    		 }
    		 if(codeArr[i].indexOf("失效")==0){
    				var h=$("<div style=' margin-bottom:4px '><span class='disable' style='float:none;'>失效</span><input type='text' value='"+codeArr[i].split(" ")[1]+"' style='height:22px;width:370px;' class='var'></div>");
    				h.contextmenu(function(e){
    					codeElement=new Array();
    					codeElement.push($(this));
    			 
    					$(".right_menu2").css("left",e.clientX);
    					$(".right_menu2").css("top",e.clientY);
    					$(".right_menu2").slideDown("fast");
    					 
    					});
    				editor.append(h);
    				 
    		 }
    		 if(codeArr[i].indexOf("那么开始")==0){
    				var b=$("<div class='bif'><div style='position:absolute;top:3px;left:3px;'>那么</div><div style='width:10px;height:20px;'></div></div>");
    				initIfBodyLevel1(b);	
    				editor.append(b);
    				lockLevel1=true;
    				lockLevel1Object=b;
    		 }
    		 if(codeArr[i].indexOf("则开始")==0){
    				var b=$("<div class='bif'><div style='position:absolute;top:3px;left:3px;'>则</div><div style='width:10px;height:20px;'></div></div>");
    				initIfBodyLevel1(b);	
    				editor.append(b);
    				lockLevel1=true;
    				lockLevel1Object=b;
    		 }
    		 if(codeArr[i].indexOf("否则开始")==0){
    				var b=$("<div class='bif'><div style='position:absolute;top:3px;left:3px;'>否则</div><div style='width:10px;height:20px;'></div></div>");
    				initIfBodyLevel1(b);	
    				editor.append(b);
    				lockLevel1=true;
    				lockLevel1Object=b;
    		 }
    		 if(codeArr[i].indexOf("如果 ")==0){
    	 
    			 var h=$("<div class='eif' ><div style='position:absolute;top:3px;left:3px;'>如果</div><div style='width:10px;height:20px;'></div></div>");
    			 initIfHead(h);	
    			 editor.append(h);
    			 h.contextmenu(function(e){
    				 codeElement=new Array();
    				 
 					if($(this).next().text()=="那么"){
 						codeElement.push($(this).next());
 						codeElement.push($(this));
 					}else{
 					 
 						codeElement.push($(this).next().next());
 						codeElement.push($(this).next());
 						codeElement.push($(this));
 					}
 					$(".right_menu2").css("left",e.clientX);
 					$(".right_menu2").css("top",e.clientY);
 					$(".right_menu2").slideDown("fast");
 					 
 					});
    			 var row=codeArr[i].split(" ");
    			 for(var j in row){
    				 if(j==0||!row[j]) continue;
    				if(row[j]=="+"){
    			  h.append("<span class='char'>+</span>");
    			  
    				}else if(row[j]=="−"){
    					h.append("<span class='char'>&minus;</span>");
    				}else if(row[j]=="×"){
    					h.append("<span class='char'>&times;</span>");
    				}else if(row[j]=="÷"){
    					h.append("<span class='char'>&divide;</span>");
    				}else if(row[j]=="="){
    					h.append("<span class='char'>=</span>");
    				}else if(row[j]=="包含"){
    					h.append("<span class='char' style='font-size:13px;'>包含</span>");
    				}else if(row[j]=="不包含"){
    					h.append("<span class='char' style='font-size:13px;'>不包含</span>");
    				}else if(row[j]=="并且"){
    					h.append("<span class='and2'>并且</span>");
    				}else if(row[j]=="或者"){
    					h.append("<span class='or2'>或者</span>");
    				}else if(row[j]=="≠"){
    					h.append("<span class='char'>&ne;</span>");
    				}else if(row[j]=="<"){
    					h.append("<span class='char'>&lt;</span>");
    				}else if(row[j]==">"){
    					h.append("<span class='char'>&gt;</span>");
    				}else if(row[j]=="≥"){
    					h.append("<span class='char'>&ge;</span>");
    				}else if(row[j]=="≤"){
    					h.append("<span class='char'>&le;</span>");
    				}else{
    					if(h.children().length==2)
    				  	h.append("<input type='text' class='var' value='"+row[j]+"' style='margin-left:27px;' >");
    				 	 else
    				 	h.append("<input type='text' class='var' value='"+row[j]+"' >");
    				}
    				
    				
    				  
    			 }
    		 }
    	 }
     }
	 
	  
	
}

function parseFromHTML(parent){
	var script="";
	var level1=$(parent+" .scratch_editor").children();
	var valid=$(parent+" .scratch_editor input");
	for(var i=0;i<valid.length;i++){
		if($.trim(valid[i].value)==""){
			return "error";
		}
	}
	level1.each(function(){
		var name=$(this).text();
		if(name.indexOf("那么")==0){
			script+="那么开始\n";
			$(this).children().each(function(){
				var name1=$(this).text();
			 
				if($(this).hasClass("eif2")){ 
					script+="如果2 ";
					 $(this).children("span,input").each(function(){
						 if($(this).is("span")){
							 script+=$(this).text()+" "; 
						 }
						 if($(this).is("input")){
							 script+=$(this).val()+" "; 
						 }
						 
					 });
					
					 script+="\n";
				}
				if($(this).hasClass("bif2")&&$(this).text().indexOf("那么")==0){
					script+="那么2开始\n";
					$(this).children().each(function(){
						var name2=$(this).text();
						 if(name2=="失效"){
							 script+="失效 "+$(this).children(".var").val()+"\n";
						 }
							 if(name2=="清空"){
								 script+="清空 "+$(this).children(".var").val()+"\n"; 
							 }
							 if(name2=="弹出"){
								 script+="弹出 "+$(this).children(".var").val()+"\n"; 
							 }
							 if(name2=="跳转"){
								 script+="跳转 "+$(this).children(".var").val()+"\n"; 
							 }
							 if(name2=="提示"){
								 script+="提示 "+$(this).children(".var").val()+"\n"; 
							 }
							 if(name2=="异常"){
								 script+="异常 "+$(this).children(".var").val()+"\n"; 
							 }
							 if(name2=="赋值为"){
								 script+="赋值 "+$(this).children(".var:first").val()+" "+$(this).children(".var:last").val()+"\n"; 
							 }
							 if(name2=="页面刷新"){
								 script+="页面刷新\n"; 
							 }
							 if(name2=="退出"){
								 script+="退出\n"; 
							 }
					
					});
					
					script+="那么2结束\n";
				}
				if($(this).hasClass("bif2")&&$(this).text().indexOf("则")==0){
					script+="则2开始\n";
					$(this).children().each(function(){
						var name2=$(this).text();
						 if(name2=="失效"){
							 script+="失效 "+$(this).children(".var").val()+"\n";
						 }
							 if(name2=="清空"){
								 script+="清空 "+$(this).children(".var").val()+"\n"; 
							 }
							 if(name2=="弹出"){
								 script+="弹出 "+$(this).children(".var").val()+"\n"; 
							 }
							 if(name2=="跳转"){
								 script+="跳转 "+$(this).children(".var").val()+"\n"; 
							 }
							 if(name2=="提示"){
								 script+="提示 "+$(this).children(".var").val()+"\n"; 
							 }
							 if(name2=="异常"){
								 script+="异常 "+$(this).children(".var").val()+"\n"; 
							 }
							 if(name2=="赋值为"){
								 script+="赋值 "+$(this).children(".var:first").val()+" "+$(this).children(".var:last").val()+"\n"; 
							 }
							 if(name2=="页面刷新"){
								 script+="页面刷新\n"; 
							 }
							 if(name2=="退出"){
								 script+="退出\n"; 
							 }
					
					});
					
					script+="则2结束\n";
				}
				if($(this).hasClass("bif2")&&$(this).text().indexOf("否则")==0){
					script+="否则2开始\n";
					$(this).children().each(function(){
						var name2=$(this).text();
						 if(name2=="失效"){
							 script+="失效 "+$(this).children(".var").val()+"\n";
						 }
							 if(name2=="清空"){
								 script+="清空 "+$(this).children(".var").val()+"\n"; 
							 }
							 if(name2=="弹出"){
								 script+="弹出 "+$(this).children(".var").val()+"\n"; 
							 }
							 if(name2=="跳转"){
								 script+="跳转 "+$(this).children(".var").val()+"\n"; 
							 }
							 if(name2=="提示"){
								 script+="提示 "+$(this).children(".var").val()+"\n"; 
							 }
							 if(name2=="异常"){
								 script+="异常 "+$(this).children(".var").val()+"\n"; 
							 }
							 if(name2=="赋值为"){
								 script+="赋值 "+$(this).children(".var:first").val()+" "+$(this).children(".var:last").val()+"\n"; 
							 }
							 if(name2=="页面刷新"){
								 script+="页面刷新\n"; 
							 }
							 if(name2=="退出"){
								 script+="退出\n"; 
							 }
					
					});
					
					script+="否则2结束\n";
				}
 				 if(name1=="失效"){
					 script+="失效 "+$(this).children(".var").val()+"\n";
				 }
 				 if(name1=="退出"){
					 script+="退出\n";
				 }
					 if(name1=="清空"){
						 script+="清空 "+$(this).children(".var").val()+"\n"; 
					 }
					 if(name1=="弹出"){
						 script+="弹出 "+$(this).children(".var").val()+"\n"; 
					 }
					 if(name1=="跳转"){
						 script+="跳转 "+$(this).children(".var").val()+"\n"; 
					 }
					 if(name1=="提示"){
						 script+="提示 "+$(this).children(".var").val()+"\n"; 
					 }
					 if(name1=="异常"){
						 script+="异常 "+$(this).children(".var").val()+"\n"; 
					 }
					 if(name1=="赋值为"){
						 script+="赋值 "+$(this).children(".var:first").val()+" "+$(this).children(".var:last").val()+"\n"; 
					 }
					 if(name1=="页面刷新"){
						 script+="页面刷新\n"; 
					 }
				 
				 
			});
			script+="那么结束\n"
		}
		if(name.indexOf("则")==0){
			script+="则开始\n";
			$(this).children().each(function(){
				var name1=$(this).text();
			 
				if($(this).hasClass("eif2")){ 
					script+="如果2 ";
					 $(this).children("span,input").each(function(){
						 if($(this).is("span")){
							 script+=$(this).text()+" "; 
						 }
						 if($(this).is("input")){
							 script+=$(this).val()+" "; 
						 }
						 
					 });
					
					 script+="\n";
				}
				if($(this).hasClass("bif2")&&$(this).text().indexOf("那么")==0){
					script+="那么2开始\n";
					$(this).children().each(function(){
						var name2=$(this).text();
						 if(name2=="失效"){
							 script+="失效 "+$(this).children(".var").val()+"\n";
						 }
							 if(name2=="清空"){
								 script+="清空 "+$(this).children(".var").val()+"\n"; 
							 }
							 if(name2=="弹出"){
								 script+="弹出 "+$(this).children(".var").val()+"\n"; 
							 }
							 if(name2=="跳转"){
								 script+="跳转 "+$(this).children(".var").val()+"\n"; 
							 }
							 if(name2=="提示"){
								 script+="提示 "+$(this).children(".var").val()+"\n"; 
							 }
							 if(name2=="异常"){
								 script+="异常 "+$(this).children(".var").val()+"\n"; 
							 }
							 if(name2=="赋值为"){
								 script+="赋值 "+$(this).children(".var:first").val()+" "+$(this).children(".var:last").val()+"\n"; 
							 }
							 if(name2=="页面刷新"){
								 script+="页面刷新\n"; 
							 }
							 if(name2=="退出"){
								 script+="退出\n"; 
							 }
					
					});
					
					script+="那么2结束\n";
				}
				if($(this).hasClass("bif2")&&$(this).text().indexOf("则")==0){
					script+="则2开始\n";
					$(this).children().each(function(){
						var name2=$(this).text();
						 if(name2=="失效"){
							 script+="失效 "+$(this).children(".var").val()+"\n";
						 }
							 if(name2=="清空"){
								 script+="清空 "+$(this).children(".var").val()+"\n"; 
							 }
							 if(name2=="弹出"){
								 script+="弹出 "+$(this).children(".var").val()+"\n"; 
							 }
							 if(name2=="跳转"){
								 script+="跳转 "+$(this).children(".var").val()+"\n"; 
							 }
							 if(name2=="提示"){
								 script+="提示 "+$(this).children(".var").val()+"\n"; 
							 }
							 if(name2=="异常"){
								 script+="异常 "+$(this).children(".var").val()+"\n"; 
							 }
							 if(name2=="赋值为"){
								 script+="赋值 "+$(this).children(".var:first").val()+" "+$(this).children(".var:last").val()+"\n"; 
							 }
							 if(name2=="页面刷新"){
								 script+="页面刷新\n"; 
							 }
							 if(name2=="退出"){
								 script+="退出\n"; 
							 }
					
					});
					
					script+="则2结束\n";
				}
				if($(this).hasClass("bif2")&&$(this).text().indexOf("否则")==0){
					script+="否则2开始\n";
					$(this).children().each(function(){
						var name2=$(this).text();
						 if(name2=="失效"){
							 script+="失效 "+$(this).children(".var").val()+"\n";
						 }
							 if(name2=="清空"){
								 script+="清空 "+$(this).children(".var").val()+"\n"; 
							 }
							 if(name2=="弹出"){
								 script+="弹出 "+$(this).children(".var").val()+"\n"; 
							 }
							 if(name2=="跳转"){
								 script+="跳转 "+$(this).children(".var").val()+"\n"; 
							 }
							 if(name2=="提示"){
								 script+="提示 "+$(this).children(".var").val()+"\n"; 
							 }
							 if(name2=="异常"){
								 script+="异常 "+$(this).children(".var").val()+"\n"; 
							 }
							 if(name2=="赋值为"){
								 script+="赋值 "+$(this).children(".var:first").val()+" "+$(this).children(".var:last").val()+"\n"; 
							 }
							 if(name2=="页面刷新"){
								 script+="页面刷新\n"; 
							 }
							 if(name2=="退出"){
								 script+="退出\n"; 
							 }
					
					});
					
					script+="否则2结束\n";
				}
 				 if(name1=="失效"){
					 script+="失效 "+$(this).children(".var").val()+"\n";
				 }
 				 if(name1=="退出"){
					 script+="退出\n";
				 }
					 if(name1=="清空"){
						 script+="清空 "+$(this).children(".var").val()+"\n"; 
					 }
					 if(name1=="弹出"){
						 script+="弹出 "+$(this).children(".var").val()+"\n"; 
					 }
					 if(name1=="跳转"){
						 script+="跳转 "+$(this).children(".var").val()+"\n"; 
					 }
					 if(name1=="提示"){
						 script+="提示 "+$(this).children(".var").val()+"\n"; 
					 }
					 if(name1=="异常"){
						 script+="异常 "+$(this).children(".var").val()+"\n"; 
					 }
					 if(name1=="赋值为"){
						 script+="赋值 "+$(this).children(".var:first").val()+" "+$(this).children(".var:last").val()+"\n"; 
					 }
					 if(name1=="页面刷新"){
						 script+="页面刷新\n"; 
					 }
				 
				 
			});
			script+="则结束\n"
		}
		if(name.indexOf("否则")==0){
			script+="否则开始\n";
			$(this).children().each(function(){
				var name1=$(this).text();
			 
				if($(this).hasClass("eif2")){ 
					script+="如果2 ";
					 $(this).children("span,input").each(function(){
						 if($(this).is("span")){
							 script+=$(this).text()+" "; 
						 }
						 if($(this).is("input")){
							 script+=$(this).val()+" "; 
						 }
						 
					 });
					
					 script+="\n";
				}
				if($(this).hasClass("bif2")&&$(this).text().indexOf("那么")==0){
					script+="那么2开始\n";
					$(this).children().each(function(){
						var name2=$(this).text();
						 if(name2=="失效"){
							 script+="失效 "+$(this).children(".var").val()+"\n";
						 }
							 if(name2=="清空"){
								 script+="清空 "+$(this).children(".var").val()+"\n"; 
							 }
							 if(name2=="弹出"){
								 script+="弹出 "+$(this).children(".var").val()+"\n"; 
							 }
							 if(name2=="跳转"){
								 script+="弹出 "+$(this).children(".var").val()+"\n"; 
							 }
							 if(name2=="提示"){
								 script+="跳转 "+$(this).children(".var").val()+"\n"; 
							 }
							 if(name2=="异常"){
								 script+="异常 "+$(this).children(".var").val()+"\n"; 
							 }
							 if(name2=="赋值为"){
								 script+="赋值 "+$(this).children(".var:first").val()+" "+$(this).children(".var:last").val()+"\n"; 
							 }
							 if(name2=="页面刷新"){
								 script+="页面刷新\n"; 
							 }
							 if(name2=="退出"){
								 script+="退出\n"; 
							 }
					
					});
					
					script+="那么2结束\n";
				}
				if($(this).hasClass("bif2")&&$(this).text().indexOf("则")==0){
					script+="则2开始\n";
					$(this).children().each(function(){
						var name2=$(this).text();
						 if(name2=="失效"){
							 script+="失效 "+$(this).children(".var").val()+"\n";
						 }
							 if(name2=="清空"){
								 script+="清空 "+$(this).children(".var").val()+"\n"; 
							 }
							 if(name2=="弹出"){
								 script+="弹出 "+$(this).children(".var").val()+"\n"; 
							 }
							 if(name2=="跳转"){
								 script+="跳转 "+$(this).children(".var").val()+"\n"; 
							 }
							 if(name2=="提示"){
								 script+="提示 "+$(this).children(".var").val()+"\n"; 
							 }
							 if(name2=="异常"){
								 script+="异常 "+$(this).children(".var").val()+"\n"; 
							 }
							 if(name2=="赋值为"){
								 script+="赋值 "+$(this).children(".var:first").val()+" "+$(this).children(".var:last").val()+"\n"; 
							 }
							 if(name2=="页面刷新"){
								 script+="页面刷新\n"; 
							 }
							 if(name2=="退出"){
								 script+="退出\n"; 
							 }
					
					});
					
					script+="则2结束\n";
				}
				if($(this).hasClass("bif2")&&$(this).text().indexOf("否则")==0){
					script+="否则2开始\n";
					$(this).children().each(function(){
						var name2=$(this).text();
						 if(name2=="失效"){
							 script+="失效 "+$(this).children(".var").val()+"\n";
						 }
							 if(name2=="清空"){
								 script+="清空 "+$(this).children(".var").val()+"\n"; 
							 }
							 if(name2=="弹出"){
								 script+="弹出 "+$(this).children(".var").val()+"\n"; 
							 }
							 if(name2=="跳转"){
								 script+="跳转 "+$(this).children(".var").val()+"\n"; 
							 }
							 if(name2=="提示"){
								 script+="提示 "+$(this).children(".var").val()+"\n"; 
							 }
							 if(name2=="异常"){
								 script+="异常 "+$(this).children(".var").val()+"\n"; 
							 }
							 if(name2=="赋值为"){
								 script+="赋值 "+$(this).children(".var:first").val()+" "+$(this).children(".var:last").val()+"\n"; 
							 }
							 if(name2=="页面刷新"){
								 script+="页面刷新\n"; 
							 }
							 if(name2=="退出"){
								 script+="退出\n"; 
							 }
					
					});
					
					script+="否则2结束\n";
				}
 				 if(name1=="失效"){
					 script+="失效 "+$(this).children(".var").val()+"\n";
				 }
 				 if(name1=="退出"){
					 script+="退出\n";
				 }
					 if(name1=="清空"){
						 script+="清空 "+$(this).children(".var").val()+"\n"; 
					 }
					 if(name1=="弹出"){
						 script+="弹出 "+$(this).children(".var").val()+"\n"; 
					 }
					 if(name1=="跳转"){
						 script+="跳转 "+$(this).children(".var").val()+"\n"; 
					 }
					 if(name1=="提示"){
						 script+="提示 "+$(this).children(".var").val()+"\n"; 
					 }
					 if(name1=="异常"){
						 script+="异常 "+$(this).children(".var").val()+"\n"; 
					 }
					 if(name1=="赋值为"){
						 script+="赋值 "+$(this).children(".var:first").val()+" "+$(this).children(".var:last").val()+"\n"; 
					 }
					 if(name1=="页面刷新"){
						 script+="页面刷新\n"; 
					 }
				 
				 
			});
			script+="否则结束\n"
		}
		if(name.indexOf("如果")==0){
			 
			 script+="如果 ";
			 $(this).children("span,input").each(function(){
				 if($(this).is("span")){
					 script+=$(this).text()+" "; 
				 }
				 if($(this).is("input")){
					 script+=$(this).val()+" "; 
				 }
				 
			 });
			
			 script+="\n";
	 
	 
		}
		 if(name=="失效"){
			 script+="失效 "+$(this).children(".var").val()+"\n"; 
		 }
		 if(name=="清空"){
			 script+="清空 "+$(this).children(".var").val()+"\n"; 
		 }
		 if(name=="弹出"){
			 script+="弹出 "+$(this).children(".var").val()+"\n"; 
		 }
		 if(name=="跳转"){
			 script+="跳转 "+$(this).children(".var").val()+"\n"; 
		 }
		 if(name=="提示"){
			 script+="提示 "+$(this).children(".var").val()+"\n"; 
		 }
		 if(name=="异常"){
			 script+="异常 "+$(this).children(".var").val()+"\n"; 
		 }
		 if(name=="赋值为"){
			 script+="赋值 "+$(this).children(".var:first").val()+" "+$(this).children(".var:last").val()+"\n"; 
		 }
		 if(name=="页面刷新"){
			 script+="页面刷新\n"; 
		 }
		  
		 
	});
 
	return script;
}


var codeElement=new Array();
var gvalue=null;


$(".if,.add,.and,.or,.openWin,.location,.refresh,.nq,.lt,.gt,.le,.ge,.include,.alert,.confirm,.exclude,.minus,.times,.divide,.eq,.disable,.empty,.val,.ifelse,.return").draggable({
	helper: "clone",
	start:function(e,ui){
		ui.helper.css("z-index",9999);
	} 
	 
});
$(".scratch_editor").click(function(){
	$(".right_menu2").slideUp("fast");
	
});
$(".scratch_editor").droppable({
	accept:".if,.ifelse,.disable,.empty,.val,.alert,.openWin,.location,.confirm,.refresh,.add,.minus,.times,.divide",
	drop :function(e,ui){
		var className=ui.draggable.attr("class").split(" ")[0];
	
		if(className=="refresh"){
			var h=$("<div style=' margin-bottom:4px '><span class='refresh' style='float:none;'>页面刷新</span></div>");
			$(this).append(h);
			h.contextmenu(function(e){
				codeElement=new Array();
				codeElement.push($(this));
		 
				$(".right_menu2").css("left",e.clientX);
				$(".right_menu2").css("top",e.clientY);
				$(".right_menu2").slideDown("fast");
				 
				});
		}
		if(className=="alert"){
			var h=$("<div style=' margin-bottom:4px '><span class='alert' style='float:none;'>提示</span><input type='text' style='height:22px;width:370px;' class='var'></div>");
			$(this).append(h);
			h.contextmenu(function(e){
				codeElement=new Array();
				codeElement.push($(this));
		 
				$(".right_menu2").css("left",e.clientX);
				$(".right_menu2").css("top",e.clientY);
				$(".right_menu2").slideDown("fast");
				 
				});
		}
		if(className=="openWin"){
			var h=$("<div style=' margin-bottom:4px '><span class='openWin' style='float:none;'>弹出</span><input type='text' onclick=openAlert(this) style='height:22px;width:370px;' class='var'></div>");
			$(this).append(h);
			h.contextmenu(function(e){
				codeElement=new Array();
				codeElement.push($(this));
		 
				$(".right_menu2").css("left",e.clientX);
				$(".right_menu2").css("top",e.clientY);
				$(".right_menu2").slideDown("fast");
				 
				});
		}
		if(className=="location"){
			var h=$("<div style=' margin-bottom:4px '><span class='location' style='float:none;'>跳转</span><input type='text' style='height:22px;width:370px;' class='var'></div>");
			$(this).append(h);
			h.contextmenu(function(e){
				codeElement=new Array();
				codeElement.push($(this));
		 
				$(".right_menu2").css("left",e.clientX);
				$(".right_menu2").css("top",e.clientY);
				$(".right_menu2").slideDown("fast");
				 
				});
		}
		if(className=="confirm"){
			var h=$("<div style=' margin-bottom:4px '><span class='confirm' style='float:none;'>异常</span><input type='text' style='height:22px;width:370px;' class='var'></div>");
			$(this).append(h);
			h.contextmenu(function(e){
				codeElement=new Array();
				codeElement.push($(this));
		 
				$(".right_menu2").css("left",e.clientX);
				$(".right_menu2").css("top",e.clientY);
				$(".right_menu2").slideDown("fast");
				 
				});
		}
		if(className=="val"){
			var h=$("<div style=' margin-bottom:4px '><span class='val' style='float:none;'>赋值</span><input type='text' style='height:22px;width:126px;' class='var'><span class='val' style='float:none;'>为</span><input type='text' onclick=openValue(this) style='height:22px;width:200px;' class='var'></div>");
			$(this).append(h);
			h.contextmenu(function(e){
				codeElement=new Array();
				codeElement.push($(this));
		 
				$(".right_menu2").css("left",e.clientX);
				$(".right_menu2").css("top",e.clientY);
				$(".right_menu2").slideDown("fast");
				 
				});
		}
		if(className=="disable"){
			var h=$("<div style=' margin-bottom:4px '><span class='disable' style='float:none;'>失效</span><input type='text' style='height:22px;width:370px;' class='var'></div>");
			$(this).append(h);
			h.contextmenu(function(e){
				codeElement=new Array();
				codeElement.push($(this));
		 
				$(".right_menu2").css("left",e.clientX);
				$(".right_menu2").css("top",e.clientY);
				$(".right_menu2").slideDown("fast");
				 
				});
		}
		if(className=="empty"){
			var h=$("<div style=' margin-bottom:4px '><span class='empty' style='float:none;'>清空</span><input type='text' style='height:22px;width:370px;' class='var'></div>");
			$(this).append(h);
			h.contextmenu(function(e){
				codeElement=new Array();
				codeElement.push($(this));
		 
				$(".right_menu2").css("left",e.clientX);
				$(".right_menu2").css("top",e.clientY);
				$(".right_menu2").slideDown("fast");
				 
				});
		}
		if(className=="ifelse"){
			var h=$("<div class='eif' ><div style='position:absolute;top:3px;left:3px;'>如果</div><div style='width:10px;height:20px;'></div></div>");
			var b=$("<div class='bif'><div style='position:absolute;top:3px;left:3px;'>则</div><div style='width:10px;height:20px;'></div></div>");
			var b2=$("<div class='bif'><div style='position:absolute;top:3px;left:3px;'>否则</div><div style='width:10px;height:20px;'></div></div>");
			h.contextmenu(function(e){
				codeElement=new Array();
				codeElement.push($(this));
				codeElement.push($(this).next());
				codeElement.push($(this).next().next());
				$(".right_menu2").css("left",e.clientX);
				$(".right_menu2").css("top",e.clientY);
				$(".right_menu2").slideDown("fast");
				 
				});
			initIfHead(h);
			initIfBodyLevel1(b);
			initIfBodyLevel1(b2);
			$(this).append(h).append(b).append(b2);
		}
		if(className=="if"){
			var h=$("<div class='eif' ><div style='position:absolute;top:3px;left:3px;'>如果</div><div style='width:10px;height:20px;'></div></div>");
			var b=$("<div class='bif'><div style='position:absolute;top:3px;left:3px;'>那么</div><div style='width:10px;height:20px;'></div></div>");
			 
				h.contextmenu(function(e){
					codeElement=new Array();
					codeElement.push($(this));
					codeElement.push($(this).next());
					$(".right_menu2").css("left",e.clientX);
					$(".right_menu2").css("top",e.clientY);
					$(".right_menu2").slideDown("fast");
					 
					});
			 
			 
			initIfHead(h);
			initIfBodyLevel1(b);
			$(this).append(h).append(b);
		}
	}
	 
});

function initIfBodyLevel1(b){
	b.droppable({
		greedy: true,
		accept:".disable,.if,.ifelse,.empty,.val,.return,.alert,.confirm,.openWin,.location,.refresh",
		drop:function(e,ui){
			if($(this).children(":last").text()=="退出") return ;
			var className=ui.draggable.attr("class").split(" ")[0];
		  
			if(className=="refresh"){
				var h=$("<div style=' margin-left:27px;margin-bottom:4px '><span class='refresh' style='float:none;'>页面刷新</span></div>");
				$(this).append(h);
				h.contextmenu(function(e){
					codeElement=new Array();
					codeElement.push($(this));
			 
					$(".right_menu2").css("left",e.clientX);
					$(".right_menu2").css("top",e.clientY);
					$(".right_menu2").slideDown("fast");
					 
					});
			}
			if(className=="openWin"){
				var h=$("<div style=' margin-left:27px;margin-bottom:4px '><span class='openWin' style='float:none;'>弹出</span><input type='text' style='height:22px;width:370px;' onclick=openAlert(this) class='var'></div>");
				$(this).append(h);
				h.contextmenu(function(e){
					codeElement=new Array();
					codeElement.push($(this));
			 
					$(".right_menu2").css("left",e.clientX);
					$(".right_menu2").css("top",e.clientY);
					$(".right_menu2").slideDown("fast");
					 
					});
			}
			if(className=="location"){
				var h=$("<div style=' margin-left:27px;margin-bottom:4px '><span class='location' style='float:none;'>跳转</span><input type='text' style='height:22px;width:370px;' class='var'></div>");
				$(this).append(h);
				h.contextmenu(function(e){
					codeElement=new Array();
					codeElement.push($(this));
			 
					$(".right_menu2").css("left",e.clientX);
					$(".right_menu2").css("top",e.clientY);
					$(".right_menu2").slideDown("fast");
					 
					});
			}
			if(className=="alert"){
				var h=$("<div style='margin-left:27px;  margin-bottom:4px '><span class='alert' style='float:none;'>提示</span><input type='text' style='height:22px;width:370px;' class='var'></div>");
				$(this).append(h);
				h.contextmenu(function(e){
					codeElement=new Array();
					codeElement.push($(this));
			 
					$(".right_menu2").css("left",e.clientX);
					$(".right_menu2").css("top",e.clientY);
					$(".right_menu2").slideDown("fast");
					 
					});
			}
			if(className=="confirm"){
				var h=$("<div style='margin-left:27px;  margin-bottom:4px '><span class='confirm' style='float:none;'>异常</span><input type='text' style='height:22px;width:370px;' class='var'></div>");
				$(this).append(h);
				h.contextmenu(function(e){
					codeElement=new Array();
					codeElement.push($(this));
			 
					$(".right_menu2").css("left",e.clientX);
					$(".right_menu2").css("top",e.clientY);
					$(".right_menu2").slideDown("fast");
					 
					});
			}
			if(className=="return"){
				var h=$("<div style=' margin-left:27px; margin-bottom:4px '><span class='return' style='float:none;'>退出</span></div>");
				$(this).append(h);
				h.contextmenu(function(e){
					codeElement=new Array();
					codeElement.push($(this));
			 
					$(".right_menu2").css("left",e.clientX);
					$(".right_menu2").css("top",e.clientY);
					$(".right_menu2").slideDown("fast");
					 
					});
			}
			if(className=="val"){
				
				var h=$("<div style=' margin-left:27px; margin-bottom:4px '><span class='val' style='float:none;'>赋值</span><input type='text' style='height:22px;width:126px;' class='var'><span class='val' style='float:none;'>为</span><input type='text' onclick=openValue(this) style='height:22px;width:200px;' class='var'></div>");
				$(this).append(h);
				h.contextmenu(function(e){
					codeElement=new Array();
					codeElement.push($(this));
			 
					$(".right_menu2").css("left",e.clientX);
					$(".right_menu2").css("top",e.clientY);
					$(".right_menu2").slideDown("fast");
					 
					});
			}
			if(className=="empty"){
				var h=$("<div style=' margin-left:27px;margin-bottom:4px '><span class='empty' style='float:none;'>清空</span><input type='text' style='height:22px;width:370px;' class='var'></div>");
				$(this).append(h);
				h.contextmenu(function(e){
					codeElement=new Array();
					codeElement.push($(this));
			 
					$(".right_menu2").css("left",e.clientX);
					$(".right_menu2").css("top",e.clientY);
					$(".right_menu2").slideDown("fast");
					 
					});
			}
			if(className=="ifelse"){
				var h=$("<div class='eif2' ><div style='position:absolute;top:3px;left:3px;'>如果</div><div style='width:10px;height:20px;'></div></div>");
				var b=$("<div class='bif2'><div style='position:absolute;top:3px;left:3px;'>则</div><div style='width:10px;height:20px;'></div></div>");
				var b2=$("<div class='bif2'><div style='position:absolute;top:3px;left:3px;'>否则</div><div style='width:10px;height:20px;'></div></div>");
				$(this).append(h).append(b).append(b2);
				initIfHead(h);
				initIfBodyLevel2(b);
				initIfBodyLevel2(b2);
				
				h.contextmenu(function(e){
					codeElement=new Array();
					codeElement.push($(this));
					codeElement.push($(this).next());
					codeElement.push($(this).next().next());
					$(".right_menu2").css("left",e.clientX);
					$(".right_menu2").css("top",e.clientY);
					$(".right_menu2").slideDown("fast");
					 
					});
				
			}
			if(className=="if"){
				var h=$("<div class='eif2' ><div style='position:absolute;top:3px;left:3px;'>如果</div><div style='width:10px;height:20px;'></div></div>");
				var b=$("<div class='bif2'><div style='position:absolute;top:3px;left:3px;'>那么</div><div style='width:10px;height:20px;'></div></div>");
				initIfHead(h);
				initIfBodyLevel2(b);
				
				$(this).append(h).append(b);
				
	 
				h.contextmenu(function(e){
					codeElement=new Array();
					codeElement.push($(this));
					codeElement.push($(this).next());
				 
					$(".right_menu2").css("left",e.clientX);
					$(".right_menu2").css("top",e.clientY);
					$(".right_menu2").slideDown("fast");
					 
					});
				
			}
        if(className=="disable"){
            var h=$("<div style='margin-left:27px;margin-bottom:4px '><span class='disable' style='float:none;'>失效</span><input type='text' style='height:22px;width:370px;' class='var'></div>");
     		$(this).append(h);
     		h.contextmenu(function(e){
				codeElement=new Array();
				codeElement.push($(this));
		 
				$(".right_menu2").css("left",e.clientX);
				$(".right_menu2").css("top",e.clientY);
				$(".right_menu2").slideDown("fast");
				 
				});
        }
		}
	});
	
}

 function initIfBodyLevel2(b){
	 b.droppable({
			greedy: true,
			accept:".disable,.empty,.val,.return,.alert,.confirm,.openWin,.location,.refresh",
			drop:function(e,ui){
				if($(this).children(":last").text()=="退出") return ;
				var className=ui.draggable.attr("class").split(" ")[0];
			  
				if(className=="refresh"){
					var h=$("<div style=' margin-left:27px;margin-bottom:4px '><span class='refresh' style='float:none;'>页面刷新</span></div>");
					$(this).append(h);
					h.contextmenu(function(e){
						codeElement=new Array();
						codeElement.push($(this));
				 
						$(".right_menu2").css("left",e.clientX);
						$(".right_menu2").css("top",e.clientY);
						$(".right_menu2").slideDown("fast");
						 
						});
				}
				if(className=="openWin"){
					var h=$("<div style=' margin-left:27px;margin-bottom:4px '><span class='openWin' style='float:none;'>弹出</span><input type='text' style='height:22px;width:310px;' onclick=openAlert(this) class='var'></div>");
					$(this).append(h);
					h.contextmenu(function(e){
						codeElement=new Array();
						codeElement.push($(this));
				 
						$(".right_menu2").css("left",e.clientX);
						$(".right_menu2").css("top",e.clientY);
						$(".right_menu2").slideDown("fast");
						 
						});
				}
				if(className=="location"){
					var h=$("<div style=' margin-left:27px;margin-bottom:4px '><span class='location' style='float:none;'>跳转</span><input type='text' style='height:22px;width:310px;' class='var'></div>");
					$(this).append(h);
					h.contextmenu(function(e){
						codeElement=new Array();
						codeElement.push($(this));
				 
						$(".right_menu2").css("left",e.clientX);
						$(".right_menu2").css("top",e.clientY);
						$(".right_menu2").slideDown("fast");
						 
						});
				}
				if(className=="alert"){
					var h=$("<div style='margin-left:27px;  margin-bottom:4px '><span class='alert' style='float:none;'>提示</span><input type='text' style='height:22px;width:310px;' class='var'></div>");
					$(this).append(h);
					h.contextmenu(function(e){
						codeElement=new Array();
						codeElement.push($(this));
				 
						$(".right_menu2").css("left",e.clientX);
						$(".right_menu2").css("top",e.clientY);
						$(".right_menu2").slideDown("fast");
						 
						});
				}
				if(className=="confirm"){
					var h=$("<div style='margin-left:27px;  margin-bottom:4px '><span class='confirm' style='float:none;'>异常</span><input type='text' style='height:22px;width:310px;' class='var'></div>");
					$(this).append(h);
					h.contextmenu(function(e){
						codeElement=new Array();
						codeElement.push($(this));
				 
						$(".right_menu2").css("left",e.clientX);
						$(".right_menu2").css("top",e.clientY);
						$(".right_menu2").slideDown("fast");
						 
						});
				}
				if(className=="return"){
					var h=$("<div style=' margin-left:27px; margin-bottom:4px '><span class='return' style='float:none;'>退出</span></div>");
					$(this).append(h);
					h.contextmenu(function(e){
						codeElement=new Array();
						codeElement.push($(this));
				 
						$(".right_menu2").css("left",e.clientX);
						$(".right_menu2").css("top",e.clientY);
						$(".right_menu2").slideDown("fast");
						 
						});
				}
				if(className=="val"){
					
					var h=$("<div style=' margin-left:27px; margin-bottom:4px '><span class='val' style='float:none;'>赋值</span><input type='text' style='height:22px;width:66px;' class='var'><span class='val' style='float:none;'>为</span><input type='text' onclick=openValue(this) style='height:22px;width:200px;' class='var'></div>");
					$(this).append(h);
					h.contextmenu(function(e){
						codeElement=new Array();
						codeElement.push($(this));
				 
						$(".right_menu2").css("left",e.clientX);
						$(".right_menu2").css("top",e.clientY);
						$(".right_menu2").slideDown("fast");
						 
						});
				}
				if(className=="empty"){
					var h=$("<div style=' margin-left:27px;margin-bottom:4px '><span class='empty' style='float:none;'>清空</span><input type='text' style='height:22px;width:310px;' class='var'></div>");
					$(this).append(h);
					h.contextmenu(function(e){
						codeElement=new Array();
						codeElement.push($(this));
				 
						$(".right_menu2").css("left",e.clientX);
						$(".right_menu2").css("top",e.clientY);
						$(".right_menu2").slideDown("fast");
						 
						});
				}
			 
			 
         if(className=="disable"){
             var h=$("<div style='margin-left:27px;margin-bottom:4px '><span class='disable' style='float:none;'>失效</span><input type='text' style='height:22px;width:310px;' class='var'></div>");
      		$(this).append(h);
      		h.contextmenu(function(e){
					codeElement=new Array();
					codeElement.push($(this));
			 
					$(".right_menu2").css("left",e.clientX);
					$(".right_menu2").css("top",e.clientY);
					$(".right_menu2").slideDown("fast");
					 
					});
         }
			}
		});
	 
 }
function initIfHead(h){
	h.droppable({
		accept:".add,.minus,.times,.divide,.eq,.and,.or,.nq,.include,.exclude,.lt,.gt,.le,.ge",
    drop:function(e,ui){
    	 
    	var andorArr=["=","包含","不包含","≠","<",">","≥","≤"];
    	var allArr=["+","−","×","÷","=","包含","不包含","≠","<",">","≥","≤"];
    	var className=ui.draggable.attr("class").split(" ")[0];
    	if(className=="and"){
    	 
    		if($.inArray($(this).children(":last").prev().text(),andorArr)!=-1){
    			$(this).append("<span class='and2'>并且</span><input type='text' class='var'>");
    		}
    	}
    	if(className=="or"){
    		if($.inArray($(this).children(":last").prev().text(),andorArr)!=-1){
    			$(this).append("<span class='or2'>或者</span><input type='text' class='var'>");
    		}
    	}
    	if(className=="gt"){
    		if($.inArray($(this).children(":last").prev().text(),andorArr)!=-1) return;
    		if($(this).children().length==2){
    			$(this).append("<input type='text' class='var' style='margin-left:27px;'>");
    		}
             
     		$(this).append("<span class='char'>&gt;</span><input type='text' class='var'>");
     	}
    	if(className=="ge"){
    		if($.inArray($(this).children(":last").prev().text(),andorArr)!=-1) return;
    		if($(this).children().length==2){
    			$(this).append("<input type='text' class='var' style='margin-left:27px;'>");
    		}
             
     		$(this).append("<span class='char'>&ge;</span><input type='text' class='var'>");
     	}
    	if(className=="le"){
    		if($.inArray($(this).children(":last").prev().text(),andorArr)!=-1) return;
    		if($(this).children().length==2){
    			$(this).append("<input type='text' class='var' style='margin-left:27px;'>");
    		}
             
     		$(this).append("<span class='char'>&le;</span><input type='text' class='var'>");
     	}
    	if(className=="lt"){
    		if($.inArray($(this).children(":last").prev().text(),andorArr)!=-1) return;
    		if($(this).children().length==2){
    			$(this).append("<input type='text' class='var' style='margin-left:27px;'>");
    		}
             
     		$(this).append("<span class='char'>&lt;</span><input type='text' class='var'>");
     	}
    	if(className=="exclude"){
    		if($.inArray($(this).children(":last").prev().text(),allArr)!=-1) return;
    		if($(this).children().length==2){
    			$(this).append("<input type='text' class='var' style='margin-left:27px;'>");
    		}
             
     		$(this).append("<span class='char' style='font-size:13px;'>不包含</span><input type='text' class='var'>");
     	}
    	if(className=="include"){
    		if($.inArray($(this).children(":last").prev().text(),allArr)!=-1) return;
    		if($(this).children().length==2){
    			$(this).append("<input type='text' class='var' style='margin-left:27px;'>");
    		}
             
     		$(this).append("<span class='char' style='font-size:13px;'>包含</span><input type='text' class='var'>");
     	}
    	if(className=="nq"){
    		if($.inArray($(this).children(":last").prev().text(),andorArr)!=-1) return;
    		if($(this).children().length==2){
    			$(this).append("<input type='text' class='var' style='margin-left:27px;'>");
    		}
             
     		$(this).append("<span class='char'>&ne;</span><input type='text' class='var'>");
     	}
    	if(className=="eq"){
    		if($.inArray($(this).children(":last").prev().text(),andorArr)!=-1) return;
    		if($(this).children().length==2){
    			$(this).append("<input type='text' class='var' style='margin-left:27px;'>");
    		}
             
     		$(this).append("<span class='char'>=</span><input type='text' class='var'>");
     	}
    	 if(className=="divide"){
    			if($(this).children().length==2){
        			$(this).append("<input type='text' class='var' style='margin-left:27px;'>");
        		}
     		$(this).append("<span class='char'>&divide;</span><input type='text' class='var'>");
     	}
        if(className=="times"){
        	if($(this).children().length==2){
    			$(this).append("<input type='text' class='var' style='margin-left:27px;'>");
    		}
    		$(this).append("<span class='char'>&times;</span><input type='text' class='var'>");
    	}
    	if(className=="minus"){
    		if($(this).children().length==2){
    			$(this).append("<input type='text' class='var' style='margin-left:27px;'>");
    		}
    		$(this).append("<span class='char'>&minus;</span><input type='text' class='var'>");
    	}
    	if(className=="add"){
    		if($(this).children().length==2){
    			$(this).append("<input type='text' class='var' style='margin-left:27px;'>");
    		}
    		$(this).append("<span class='char'>+</span><input type='text' class='var'>");
    	}
    } 			
	});
	
}

function openAlert(v){
	gvalue=v;
	$(".alert_selected .text_static_data").val("");
	$(".alert_selected").slideDown("fast");
	var json=$.trim($(v).val());
	if(!json) {
		
		return ;
	}
	json=JSON.parse(json);
	
	
	$(".alert_selected .text_static_data:eq(0)").val(json.url);
	$(".alert_selected .text_static_data:eq(1)").val(json.w);
	$(".alert_selected .text_static_data:eq(2)").val(json.h);
	$(".alert_selected .text_static_data:eq(3)").val(json.bg);
	$(".alert_selected .text_static_data:eq(4)").val(json.title);
}

function openValue(v){
	gvalue=v;
	$(".eq_selected .text_static_data").val("");
	$(".eq_selected .kv_panel2>.kv_row").remove();
	$(".typeofmsg2 .radio_item").removeClass("radio_item_click");
	$(".typeofmsg2 .radio_item:first").addClass("radio_item_click");
	$(".eq_selected .kv_panel2").show();
	$(".kv_panel_add2").show();
	$(".kv_panel_del2").show();
	$(".text_panel2").hide();
	var json=$.trim($(v).val());
	if(json){
		json=JSON.parse(json);
		if(json.type=="static"){
			$(".eq_selected .text_static_data:eq(0)").val(json.value);
		}
		if(json.type=="url"){
			$(".eq_selected .text_static_data:eq(1)").val(json.key);
		}
		if(json.type=="sql"){
			$(".eq_selected .text_static_data:eq(2)").val(json.sql);
			$(".eq_selected .event_ds").easyDropDown("select",json.ds);
		}
		if(json.type=="http"){
			$(".eq_selected .text_static_data:eq(3)").val(json.url);
			$(".eq_selected .schema_ds").easyDropDown("select",json.method);
			$(".eq_selected .text_static_data:eq(5)").val(json.returnValue);
			 $(".typeofmsg2 .radio_item").removeClass("radio_item_click");
		   if(json.valueType!="kv"){
			   $(".typeofmsg2 .radio_item:last").addClass("radio_item_click");
			   $(".eq_selected .text_static_data:eq(4)").val(json.value);
				  $(".kv_panel2").hide();
				  $(".kv_panel_add2").hide();
				  $(".kv_panel_del2").hide();
				  $(".text_panel2").show();
		   }else{
			   $(".typeofmsg2 .radio_item:first").addClass("radio_item_click");
			   for(var k in json.value){
				   $o=$('<div class="kv_row" ondblclick="toggleSelect(this)"><div class="k_column"><input type="text" value='+k+' class="k_input"></div><div class="v_column"><input type="text" value="" class="v_input"></div></div>');
				   $(".kv_panel2").append($o);
				   $o.find(".v_input").val(json.value[k]);
			   }
		   }
		}
		
		
	}
	
	$(".eq_selected").slideDown("fast");
	
}

$(".alert_selected .ok").click(function(){
	var arg0=$.trim($(".alert_selected .text_static_data:eq(0)").val());
	var arg1=$.trim($(".alert_selected .text_static_data:eq(1)").val());
	var arg2=$.trim($(".alert_selected .text_static_data:eq(2)").val());
	var arg3=$.trim($(".alert_selected .text_static_data:eq(3)").val());
	var arg4=$.trim($(".alert_selected .text_static_data:eq(4)").val());
	
	if(!arg0){
		alert("url不得为空");
		return ;
	}
	if(!arg4){
		alert("标题不得为空");
		return ;
	}
	if(arg0.indexOf("http")==-1){
		alert("url格式不正确");
		return ;
	}
	if(!arg1){
		alert("宽度不得为空");
		return ;
	}
	if(isNaN(arg1)){
		alert("宽度必须为数字");
		return ;
	}

	if(!arg2){
		alert("高度不得为空");
		return ;
	}
	if(isNaN(arg2)){
		alert("高度必须为数字");
		return ;
	}
	if(!arg3){
		alert("颜色不得为空");
		return ;
	}
	
	 $(gvalue).val('{"url":"'+arg0+'","w":'+arg1+',"h":'+arg2+',"bg":"'+arg3+'","title":"'+arg4+'"}');
	
		$(".alert_selected").slideUp("fast");
});

$(".eq_selected .ok").click(function(){
	var arg0=$.trim($(".eq_selected .text_static_data:eq(0)").val());
	var arg1=$.trim($(".eq_selected .text_static_data:eq(1)").val());
	var arg2=$.trim($(".eq_selected .text_static_data:eq(2)").val());
	var arg3=$.trim($(".eq_selected .text_static_data:eq(3)").val());
	var arg5=$.trim($(".eq_selected .text_static_data:eq(5)").val());
	var ds=$(".eq_selected .event_ds").val();
	var method=$(".eq_selected .schema_ds").val();
	var index=$(".typeofmsg2 .radio_item_click").index();
	if(!arg0&&!arg1&&!arg2&&!arg3){
		alert("请填写赋值信息")
		return ;
	}
	if(arg3!=""&&arg3.indexOf("http://")!=0){
		alert("无效的url");
		return ;
	}
	 
	
	if(arg0!=""){
		 $(gvalue).val('{"type":"static","value":"'+arg0+'"}');
		 
	}
	if(arg1!=""){
		 $(gvalue).val('{"type":"url","key":"'+arg1+'"}');
		 
	}
	if(arg3!=""){
		var valueType=index==0?"kv":"text";
		var v={type:"http",
				valueType:valueType,returnValue:arg5,method:method,url:arg3};
		if(valueType=="kv"){
			v.value=new Object();
			var validKey=new Array();
			var validNull=true;
 
			$(".eq_selected .kv_panel2>.kv_row").each(function(){
				var ki=$.trim($(this).find(".k_input").val());
 
				if(!ki) validNull=false;
				validKey.push(ki);
				var vi=$.trim($(this).find(".v_input").val());
				v.value[ki]=vi;
			});
			if($(".eq_selected .kv_panel2>.kv_row").length!=$.unique(validKey).length){
				alert("重复的key");
				return ;
			}
			 if(!validNull){
				 alert("key不能为空");
				 return ; 
			 }
		}else{
			v.value=$.trim($(".eq_selected .text_static_data:eq(4)").val());
		}
		 $(gvalue).val(JSON.stringify(v));
		 
	}
	if(arg2!=""){
 
		 $(gvalue).val('{"type":"sql","ds":"'+ds+'","sql":"'+arg2+'"}');
		 
	}
	$(".eq_selected").slideUp("fast");
	
});

$(".right_menu2>div:first").click(function(){
	 
	for(var i in  codeElement){
		 
	  	codeElement[i].remove();	
	}
 
	$(".right_menu2").slideUp("fast");
});