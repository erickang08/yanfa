if(typeof JRJ=="undefined"||!JRJ){var JRJ={}}if(typeof JRJ.html54stock=="undefined"||!JRJ.html54stock){JRJ.html54stock={}}$(document).ready(function(){JRJ.html54stock.initAIndexCvs=function(){JRJ.html54stock.gHasAIndex=true;JRJ.html54stock.gCvsCfg=JRJ.html54stock.gCvsCfg||{};var b="onorientationchange" in window,c=b?"orientationchange":"resize";window.addEventListener(c,function(){setTimeout(function(){a()},500)},false);var a=function(){var g="canvas4Aindex",j=$("#"+g).parent().width()*2,d=220*2;$("#"+g).attr("width",j);$("#"+g).attr("height",d);$("#"+g)[0].style.width=j/2+"px";$("#"+g)[0].style.height=d/2+"px";JRJ.html54stock.gCvsCfg.addCrossLinesAndTipEvents=true;var h=100.5;var e=new minsChart(g,$.extend({fallColor:"green",riseColor:"red",normalColor:"black",maxDotsCount:241,needPaintAvgPriceLine:false,backgroundColor:"white",topText:{font:"24px Arial",color:"black",region:{x:h,y:1.5,width:j-180,height:14*2},textBaseline:"top"},minsChart:{region:{x:h,y:31.5,width:j-180,height:120*2},priceLineColor:"#266ebc",avgPriceLineColor:"#dd9955",middleLineColor:"red",otherSplitLineColor:"lightgray",borderColor:"gray",horizontalLineCount:5,verticalLineCount:3,yScalerLeft:{font:"24px Arial",region:{x:48.5,y:20,width:50.5,height:120*2},align:"right",fontHeight:9,textBaseline:"top"},yScalerRight:{font:"24px Arial",region:{x:j-44.5,y:20,width:40.5,height:120*2},align:"right",fontHeight:9,textBaseline:"top"}},xScaler:{font:"24px Arial",color:"black",region:{x:h,y:160*2,width:j-180,height:20},data:["09:30","10:30","11:30/13:00","14:00","15:00"]},bottomText:{font:"24px \u5b8b\u4f53",color:"black",region:{x:h,y:140*2,width:j-140,height:20}},volume:{region:{x:h,y:175.5*2,width:j-180,height:40*2},bar:{color:"green",width:2*2},borderColor:"lightgray",splitLineColor:"lightgray",yScaler:{font:"24px Arial",region:{x:48.5,y:170.5*2,width:50.5,height:40*2},color:"black",align:"right",fontHeight:12,textBaseline:"top"}}},JRJ.html54stock.gCvsCfg));if(!JRJ.html54stock.gCvsCfg.bNeedVolumn){e.paintVolume=function(){}}var f=JRJ.html54stock.gCvsCfg.code||"000001";function i(){var k=new cvsLoading(document.getElementById("canvas4Aindex"),{radius:8,circleLineWidth:3});k.show();loadScript("http://q.jrjimg.cn/?q=cn|i&i="+f,function(){if(obj0.HqData[0][obj0.Column.lcp]!=0&&(obj0.HqData[0][obj0.Column.stp]==1||obj0.HqData[0][obj0.Column.np]==0)){}else{var q=new Date().getHours(),o=new Date().getMinutes();if(q==9&&o>=25&&o<=30){k.hide();var n=obj0.HqData[0][obj0.Column.np],r=n,l=n,p=0;var m={quote:{preClose:obj0.HqData[0][obj0.Column.np],price:n,leftPl:obj0.HqData[0][obj0.Column.pl]},mins:[]};m.quote.highest=r;m.quote.lowest=l;m.quote.amount=p;e.middleTxt=" ";e.beforeStartType=true;e.paint(m)}else{loadScript("http://flashdata2.jrj.com.cn/today/js/index/"+f+".js?_="+new Date().getTime(),function(){k.hide();var x=window["Min_"+f];if(x.Data.length>=1){var u=x.Data[x.Data.length-1][1],y=u,s=u,w=0;var t={quote:{preClose:x.Summary.A2,price:u},mins:[]};for(var v=0;v<x.Data.length;v++){t.mins.push({price:x.Data[v][1],volume:x.Data[v][2],amount:parseInt(x.Data[v][3].toString(),10),avg:x.Data[v][4],time:x.Data[v][0]});y=Math.max(y,x.Data[v][1]);s=Math.min(s,x.Data[v][1]);w+=x.Data[v][3]}t.quote.highest=y;t.quote.lowest=s;t.quote.amount=w;e.paint(t)}else{var u=0,y=u,s=u,w=0;var t={quote:{preClose:x.Summary.A2,price:u},mins:[]};for(var v=0;v<x.Data.length;v++){t.mins.push({price:x.Data[v][1],volume:x.Data[v][2],amount:parseInt(x.Data[v][3].toString(),10),avg:x.Data[v][4],time:x.Data[v][0]});y=Math.max(y,x.Data[v][1]);s=Math.min(s,x.Data[v][1]);w+=x.Data[v][3]}t.quote.highest=y;t.quote.lowest=s;t.quote.amount=w;e.middleTxt="\u96c6\u5408\u7ade\u4ef7\u9636\u6bb5";e.paint(t)}})}}})}i();if(!!window.AIndexTimer){window.clearInterval(window.AIndexTimer)}window.AIndexTimer=window.setInterval(function(){i()},1*60*1000)};setTimeout(function(){a()},200)}});
if(typeof JRJ=="undefined"||!JRJ){var JRJ={}}if(typeof JRJ.html54stock=="undefined"||!JRJ.html54stock){JRJ.html54stock={}}$(document).ready(function(){JRJ.html54stock.initKIndexDayCvs=function(){JRJ.html54stock.gHasIndexDay=true;JRJ.html54stock.gK_CvsCfg=JRJ.html54stock.gK_CvsCfg||{};var b;var e="canvas4KIndexDay",g=$("#"+e).parent().width()*2,c=220*2;$("#"+e).attr("width",g);$("#"+e).attr("height",c);$("#"+e)[0].style.width=g/2+"px";$("#"+e)[0].style.height=c/2+"px";var d={backgroundColor:"#fff",riseColor:"red",fallColor:"green",normalColor:"black",chartMargin:{left:0.5,top:0.5,right:0.5},region:{x:98.5,y:10.5,width:g-75-30.5,height:150*2},barWidth:5,spaceWidth:2,horizontalLineCount:3,verticalLineCount:5,lineStyle:"solid",borderColor:"gray",splitLineColor:"#eeeeee",lineWidth:1,MAs:[{color:"rgb(255,70,251)",daysCount:5},{color:"rgb(227,150,34)",daysCount:10},{color:"rgb(53,71,107)",daysCount:20}],sliceData:20,yAxis:{font:"24px Arial",color:"black",align:"right",fontHeight:8,textBaseline:"top"},xAxis:{font:"24px Arial",color:"black",align:"center",fontHeight:8,textBaseline:"top",scalerCount:3},volume:{region:{x:98.5,y:170*2,height:40*2,width:g-75-30.5},horizontalLineCount:1,yAxis:{font:"24px Arial",color:"black",align:"right",fontHeight:8,textBaseline:"top"}},priceLine:{region:{x:85.5,y:380.5,height:60*2,width:g-75.5-20.5},verticalLineCount:7,horizontalLineCount:1,lineStyle:"solid",borderColor:"gray",splitLineColor:"#eeeeee",fillColor:"lightgray",alpha:0.5,yAxis:{font:"24px Arial",color:"black",align:"right",fontHeight:8,textBaseline:"top"}},controller:{bar:{width:20,height:35,borderColor:"black",fillColor:"lightgray"},minBarDistance:20},controllerEvents:function(h,j){var i=this;return{onStart:function(k){k=k||event;var l=h(k);i.controllerStartOffset=l;i.controllerStartRange=i.dataRanges},onEnd:function(k){i.controllerStartOffset=null;i.controllerStartRange=null},onMove:function(q){if(!i.controllerStartOffset){return}q=q||event;var n=h(q);var l=n.offsetX-i.controllerStartOffset.offsetX;var p=i.controllerStartRange;var m=j.width/2;var r=0-(l/m)*(p.to-p.start);var k=p.start+r;var s=p.to+r;if(k<0){k=0;s=k+(p.to-p.start)}else{if(s>100){s=100;k=s-(p.to-p.start)}}var o={left:k,right:s};if(!i.painting){f({start:o.left,to:o.right})}}}}};var f=function(h){function i(){if(!b){var j=$id(e);if(j.width!=g){j.width=g}var k=new kLine(d);k.onOrentationChanged=function(m){var l=this;setTimeout(function(){var o=window.orientation;g=$("#"+e).parent().width()*2;function n(){return $("#"+e).parent().width()*2||g}if(typeof o!="undefined"){var r=n();l.canvas.width=r;$(l.canvas).attr("width",g);$(l.canvas).attr("height",c);l.canvas.style.width=g/2+"px";l.canvas.style.height=c/2+"px";var p=l.klOptions;var q=g;l.klOptions.volume.region.width=l.klOptions.priceLine.region.width=l.klOptions.region.width=q-45.5-20.5;l.controller=null;l.hasPaintPriceLine=false;f({start:l.dataRanges.start,to:l.dataRanges.to})}},500)};a(function(l){b=new Painter(e,k,l);b.dataRanges=h;b.paint()})}else{b.dataRanges=h;b.paint()}}i();if(!!window.KIndexDayTimer){window.clearInterval(window.KIndexDayTimer)}window.KIndexDayTimer=window.setInterval(function(){i()},1*60*1000)};function a(i){var h=new cvsLoading(document.getElementById("canvas4KIndexDay"),{radius:8,circleLineWidth:3});h.show();loadScript("http://flashdata2.jrj.com.cn/history/js/index/"+JRJ.html54stock.gK_CvsCfg.code+"/day.js?_="+new Date().getTime(),function(){h.hide();var k={},q=[],o=window["i_d_"+JRJ.html54stock.gK_CvsCfg.code]["rows"];for(var m=(d.sliceData>=o.length?0:d.sliceData)||0;m<o.length;m++){var p=o[m];var n={quoteTime:p[0],open:p[1],close:p[2],high:p[3],low:p[4],volume:p[5],amount:p[6],preClose:p[7]};if(q.length==0){k.low=n.low;k.high=n.high}else{k.high=Math.max(k.high,n.high);k.low=Math.min(k.low,n.low)}q.push(n)}k.ks=q;k.kMAs=o.slice(0,d.sliceData);for(var l=0;l<k.kMAs.length;l++){k.kMAs[l]=k.kMAs[l][2]}i.call(this,k)})}f()}});
if(typeof JRJ=="undefined"||!JRJ){var JRJ={}}if(typeof JRJ.html54stock=="undefined"||!JRJ.html54stock){JRJ.html54stock={}}$(document).ready(function(){JRJ.html54stock.initKIndexWeekCvs=function(){JRJ.html54stock.gHasKIndexWeek=true;JRJ.html54stock.gK_CvsCfg=JRJ.html54stock.gK_CvsCfg||{};var b;var e="canvas4KIndexWeek",g=$("#"+e).parent().width()*2,c=220*2;$("#"+e).attr("width",g);$("#"+e).attr("height",c);$("#"+e)[0].style.width=g/2+"px";$("#"+e)[0].style.height=c/2+"px";var d={backgroundColor:"#fff",riseColor:"red",fallColor:"green",normalColor:"black",chartMargin:{left:0.5,top:0.5,right:0.5},region:{x:98.5,y:10.5,width:g-75-30.5,height:150*2},barWidth:5,spaceWidth:2,horizontalLineCount:3,verticalLineCount:5,lineStyle:"solid",borderColor:"gray",splitLineColor:"#eeeeee",lineWidth:1,MAs:[{color:"rgb(255,70,251)",daysCount:5},{color:"rgb(227,150,34)",daysCount:10},{color:"rgb(53,71,107)",daysCount:20}],sliceData:20,yAxis:{font:"24px Arial",color:"black",align:"right",fontHeight:8,textBaseline:"top"},xAxis:{font:"24px Arial",color:"black",align:"center",fontHeight:8,textBaseline:"top",scalerCount:3},volume:{region:{x:98.5,y:170*2,height:40*2,width:g-75-30.5},horizontalLineCount:1,yAxis:{font:"24px Arial",color:"black",align:"right",fontHeight:8,textBaseline:"top"}},priceLine:{region:{x:85.5,y:380.5,height:60*2,width:g-75.5-20.5},verticalLineCount:7,horizontalLineCount:1,lineStyle:"solid",borderColor:"gray",splitLineColor:"#eeeeee",fillColor:"lightgray",alpha:0.5,yAxis:{font:"24px Arial",color:"black",align:"right",fontHeight:8,textBaseline:"top"}},controller:{bar:{width:20,height:35,borderColor:"black",fillColor:"lightgray"},minBarDistance:20},controllerEvents:function(h,j){var i=this;return{onStart:function(k){k=k||event;var l=h(k);i.controllerStartOffset=l;i.controllerStartRange=i.dataRanges},onEnd:function(k){i.controllerStartOffset=null;i.controllerStartRange=null},onMove:function(q){if(!i.controllerStartOffset){return}q=q||event;var n=h(q);var l=n.offsetX-i.controllerStartOffset.offsetX;var p=i.controllerStartRange;var m=j.width;var r=0-(l/m)*(p.to-p.start);var k=p.start+r;var s=p.to+r;if(k<0){k=0;s=k+(p.to-p.start)}else{if(s>100){s=100;k=s-(p.to-p.start)}}var o={left:k,right:s};if(!i.painting){f({start:o.left,to:o.right})}}}}};var f=function(h){function i(){if(!b){var j=$id(e);if(j.width!=g){j.width=g}var k=new kLine(d);k.onOrentationChanged=function(m){var l=this;setTimeout(function(){var o=window.orientation;g=$("#"+e).parent().width()*2;function n(){return $("#"+e).parent().width()*2||g}if(typeof o!="undefined"){var r=n();l.canvas.width=r;$(l.canvas).attr("width",g);$(l.canvas).attr("height",c);l.canvas.style.width=g/2+"px";l.canvas.style.height=c/2+"px";var p=l.klOptions;var q=g;l.klOptions.volume.region.width=l.klOptions.priceLine.region.width=l.klOptions.region.width=q-45.5-20.5;l.controller=null;l.hasPaintPriceLine=false;f({start:l.dataRanges.start,to:l.dataRanges.to})}},500)};a(function(l){b=new Painter(e,k,l);b.dataRanges=h;b.paint()})}else{b.dataRanges=h;b.paint()}}i();if(!!window.KIndexWeekTimer){window.clearInterval(window.KIndexWeekTimer)}window.KIndexWeekTimer=window.setInterval(function(){i()},1*60*1000)};function a(i){var h=new cvsLoading(document.getElementById("canvas4KIndexWeek"),{radius:8,circleLineWidth:3});h.show();loadScript("http://flashdata2.jrj.com.cn/history/js/index/"+JRJ.html54stock.gK_CvsCfg.code+"/week.js?_="+new Date().getTime(),function(){h.hide();var k={},q=[],o=window["i_w_"+JRJ.html54stock.gK_CvsCfg.code]["rows"];for(var m=(d.sliceData>=o.length?0:d.sliceData)||0;m<o.length;m++){var p=o[m];var n={quoteTime:p[0],open:p[1],close:p[2],high:p[3],low:p[4],volume:p[5],amount:p[6],preClose:p[7]};if(q.length==0){k.low=n.low;k.high=n.high}else{k.high=Math.max(k.high,n.high);k.low=Math.min(k.low,n.low)}q.push(n)}k.ks=q;k.kMAs=o.slice(0,d.sliceData);for(var l=0;l<k.kMAs.length;l++){k.kMAs[l]=k.kMAs[l][2]}i.call(this,k)})}f()}});
if(typeof JRJ=="undefined"||!JRJ){var JRJ={}}if(typeof JRJ.html54stock=="undefined"||!JRJ.html54stock){JRJ.html54stock={}}$(document).ready(function(){JRJ.html54stock.initKIndexMonthCvs=function(){JRJ.html54stock.gHasKIndexMonth=true;JRJ.html54stock.gK_CvsCfg=JRJ.html54stock.gK_CvsCfg||{};var b;var e="canvas4KIndexMonth",g=$("#"+e).parent().width()*2,c=220*2;$("#"+e).attr("width",g);$("#"+e).attr("height",c);$("#"+e)[0].style.width=g/2+"px";$("#"+e)[0].style.height=c/2+"px";var d={backgroundColor:"#fff",riseColor:"red",fallColor:"green",normalColor:"black",chartMargin:{left:0.5,top:0.5,right:0.5},region:{x:98.5,y:10.5,width:g-75-30.5,height:150*2},barWidth:5,spaceWidth:2,horizontalLineCount:3,verticalLineCount:5,lineStyle:"solid",borderColor:"gray",splitLineColor:"#eeeeee",lineWidth:1,MAs:[{color:"rgb(255,70,251)",daysCount:5},{color:"rgb(227,150,34)",daysCount:10},{color:"rgb(53,71,107)",daysCount:20}],sliceData:5,yAxis:{font:"24px Arial",color:"black",align:"right",fontHeight:8,textBaseline:"top"},xAxis:{font:"24px Arial",color:"black",align:"center",fontHeight:8,textBaseline:"top",scalerCount:3},volume:{region:{x:98.5,y:170*2,height:40*2,width:g-75-30.5},horizontalLineCount:1,yAxis:{font:"24px Arial",color:"black",align:"right",fontHeight:8,textBaseline:"top"}},priceLine:{region:{x:85.5,y:380.5,height:60*2,width:g-75.5-20.5},verticalLineCount:7,horizontalLineCount:1,lineStyle:"solid",borderColor:"gray",splitLineColor:"#eeeeee",fillColor:"lightgray",alpha:0.5,yAxis:{font:"24px Arial",color:"black",align:"right",fontHeight:8,textBaseline:"top"}},controller:{bar:{width:20,height:35,borderColor:"black",fillColor:"lightgray"},minBarDistance:20},controllerEvents:function(h,j){var i=this;return{onStart:function(k){k=k||event;var l=h(k);i.controllerStartOffset=l;i.controllerStartRange=i.dataRanges},onEnd:function(k){i.controllerStartOffset=null;i.controllerStartRange=null},onMove:function(q){if(!i.controllerStartOffset){return}q=q||event;var n=h(q);var l=n.offsetX-i.controllerStartOffset.offsetX;var p=i.controllerStartRange;var m=j.width;var r=0-(l/m)*(p.to-p.start);var k=p.start+r;var s=p.to+r;if(k<0){k=0;s=k+(p.to-p.start)}else{if(s>100){s=100;k=s-(p.to-p.start)}}var o={left:k,right:s};if(!i.painting){f({start:o.left,to:o.right})}}}}};var f=function(h){function i(){if(!b){var j=$id(e);if(j.width!=g){j.width=g}var k=new kLine(d);k.onOrentationChanged=function(m){var l=this;setTimeout(function(){var o=window.orientation;g=$("#"+e).parent().width()*2;function n(){return $("#"+e).parent().width()*2||g}if(typeof o!="undefined"){var r=n();l.canvas.width=r;$(l.canvas).attr("width",g);$(l.canvas).attr("height",c);l.canvas.style.width=g/2+"px";l.canvas.style.height=c/2+"px";var p=l.klOptions;var q=g;l.klOptions.volume.region.width=l.klOptions.priceLine.region.width=l.klOptions.region.width=q-45.5-20.5;l.controller=null;l.hasPaintPriceLine=false;f({start:l.dataRanges.start,to:l.dataRanges.to})}},500)};a(function(l){b=new Painter(e,k,l);b.dataRanges=h;b.paint()})}else{b.dataRanges=h;b.paint()}}i();if(!!window.KIndexMonthTimer){window.clearInterval(window.KIndexMonthTimer)}window.KIndexMonthTimer=window.setInterval(function(){i()},1*60*1000)};function a(i){var h=new cvsLoading(document.getElementById("canvas4KIndexMonth"),{radius:8,circleLineWidth:3});h.show();loadScript("http://flashdata2.jrj.com.cn/history/js/index/"+JRJ.html54stock.gK_CvsCfg.code+"/month.js?_="+new Date().getTime(),function(){h.hide();var k={},q=[],o=window["i_m_"+JRJ.html54stock.gK_CvsCfg.code]["rows"];for(var m=(d.sliceData>=o.length?0:d.sliceData)||0;m<o.length;m++){var p=o[m];var n={quoteTime:p[0],open:p[1],close:p[2],high:p[3],low:p[4],volume:p[5],amount:p[6],preClose:p[7]};if(q.length==0){k.low=n.low;k.high=n.high}else{k.high=Math.max(k.high,n.high);k.low=Math.min(k.low,n.low)}q.push(n)}k.ks=q;k.kMAs=o.slice(0,d.sliceData);for(var l=0;l<k.kMAs.length;l++){k.kMAs[l]=k.kMAs[l][2]}i.call(this,k)})}f()}});
