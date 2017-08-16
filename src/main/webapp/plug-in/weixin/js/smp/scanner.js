  
 wx.error(function(res) {  
        alert("出错了：" + res.errMsg);  
    });  
  
    wx.ready(function() {  
        wx.checkJsApi({  
            jsApiList : ['scanQRCode'],  
            success : function(res) {  
            }  
        });  
 
          
    });//end_ready  
    
	function scanQRbar() {		
            wx.scanQRCode({  
                needResult : 1, // 默认为0，扫描结果由微信处理，1则直接返回扫描结果，  
 //               scanType : [ "qrCode", "barCode" ], // 可以指定扫二维码还是一维码，默认二者都有  
                scanType : [ "barCode" ], // 可以指定扫二维码还是一维码，默认二者都有  
                success : function(res) {  
                    var result = res.resultStr; // 当needResult 为 1 时，扫码返回的结果  
                    var section = result.substring(result.indexOf(",")+1, result.length);
                    document.getElementById("orderId").value = section;//将扫描的结果赋予到jsp对应值上  
                   // alert("扫描成功::扫描码=" + result);  
                }  
            });  
	}
 