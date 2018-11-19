onload=ajax();
function ajax(){
	var url = sessionStorage.getItem('url');
	var json = sessionStorage.getItem('json');
	console.log(url);
	$.ajax({
		type:"get",
        dataType:"json",
        data:json,
        url:"http://125.81.59.65:8081/ApiManagementSystem/interface"+url,
        success:function(result){
            // var backdata = result.data
            if(result.status==200){
                var display = document.getElementById('display');
                display.innerHTML=json;
            }
        },
        error:function(result){
            alert("页面错误");
        },
	})
}