

function check1() {
    if ($("#cards").val()==""){
        alert("请输入n张牌并用空格隔开");
        return false;
    }
    if ($("#x").val()==""){
        alert("请输入目标点数");
        return false;
    }
    return true;
}
function check2(vform) {
//    遍历表单中每个表单域
    for (var i=0; i<vform.elements.length; i++){
    //    如果表单域是文本框，进行定义好的验证
        if (vform.elements[i].type=="text"){
        //    取得验证结果
            var checkResult=checkTextBox(vform.elements[i]);
        //    取得文本框名，getAttribute获取指定标签属性的值
            var name=vform.elements[i].getAttribute("name");
        //    验证通过
            if (checkResult){
            //    getElementById通过控件ID取得元素的值
                document.getElementById(name+"Msg").className="feedbackHide";
            }
            else{
            //    验证不通过，显示提示文字并置焦点
                document.getElementById(name+"Msg").className="feedbackShow";
                vform.elements[i].focus();
                return false;
            }
        }
    }
    return true;
}
//检查文本框
function checkTextBox(vTextBox){
//    取得文本框中允许输入的合法文字正则表达式
    var validChar=vTextBox.getAttribute("validChar");
//    取得文本框中是否必须检查的标志
    var isRequired=vTextBox.getAttribute("isRequired");
//    取得文本框的输入
    var inputValue=vTextBox.value;
//如果是非必填字段且没有输入则返回真
    if (isRequired!="true"&&inputValue.length<1){
        return true;
    }
//    否则进行正则表达式验证
    else{
        var regexStr="^"+validChar+"$";
        var regex=new RegExp(regexStr);
        return regex.test(inputValue);
    }
}