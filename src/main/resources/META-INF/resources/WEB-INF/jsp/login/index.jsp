
<!DOCTYPE html>
<html >
<head>
    <title>Java后端WebSocket的Tomcat实现</title>
    <meta charset="utf-8" content="text/css" >
</head>
<body>
<h2>欢迎登录:1</h2>
<div><span id="status"  style='border: 2px solid #9E9E9E'></span>
    <span id="out"  style='border: 2px solid #9E9E9E;    position: relative; right: 7%; float: right; top: -20px;cursor: pointer'>退出</span>

</div>

<div id="message" style=" overflow: auto; width: 80%; height: 400px;border: 2px solid #9E9E9E;margin-top: 10px;margin-bottom: 10px;background: rgba(158, 158, 158, 0.28)">
    <p id="title" style="position: relative;width:100%;text-align: center;border-bottom: 1px solid #9E9E9E"></p>


</div>

<div style="    position: relative; float: right;height: 400px;  border: 2px solid #9E9E9E;width: 18%; top: -415px;background: rgba(158, 158, 158, 0.28)" id="users">


</div>
Welcome<br/><input id="text" type="text"/>


<button onclick="send()">发送消息</button>
<hr/>
<button onclick="closeWebSocket()">关闭WebSocket连接</button>
<hr/>

</body>

<script type="text/javascript">
    var userId='oQSYYw9RT8EfCCiQ3R4L7pfQpk9g';
    var websocket = null;
    //判断当前浏览器是否支持WebSocket
    if ('WebSocket' in window) {
        websocket = new WebSocket("ws://localhost:8080/websocket?userId="+userId);
    }
    else {
        alert('当前浏览器 Not support websocket')
    }
    //连接发生错误的回调方法
    websocket.onerror = function () {
        setMessageInnerHTML("WebSocket连接发生错误");
    };
    //连接成功建立的回调方法
    websocket.onopen = function (evet) {

        setMessageInnerHTML("WebSocket连接成功");

    }

    //连接关闭的回调方法
    websocket.onclose = function () {
        setMessageInnerHTML("WebSocket连接关闭");
    }
    //监听窗口关闭事件，当窗口关闭时，主动去关闭websocket连接，防止连接还没断开就关闭窗口，server端会抛异常。
    window.onbeforeunload = function () {
        closeWebSocket();
    }
    //将状态显示在网页上
    function setMessageInnerHTML(innerHTML) {
        document.getElementById('status').innerHTML += innerHTML + '<br/>';
    }
    //将消息显示在网页上
    function setMessageInnerHTML2(innerHTML) {
        var json=JSON.parse(innerHTML);
        var content=json.chatContent;
        var fromId=json.fromId;//此消息的发送者，作为发送消息时的toId

        document.getElementById('message').innerHTML += content + '<br/>';
    }
    //关闭WebSocket连接
    function closeWebSocket() {
        websocket.close();
    }
    //发送消息
    function send() {
        var type="msg";
        var message = document.getElementById('text').value;
//        var json = { type:type, senderId: "157", receiverId: "138",chatContent: message,bizType:"开锁登记",bizId:"234232342",fromType:"微信用户",fromId:userId
//        ,toType:"从业人员",toId:"phoneuserid",chatType:"文本",chatUrl:"",createdAt:"2017-07-13 12:05:43"};
        var json={
            bizId:"d2d79631-81f3-472d-aab6-62e67bd9630b",
            bizType:"开锁登记",
            chatContent:"123",
            chatType:"文本",
            chatUrl:"99",
            fromId:"oQSYYw9RT8EfCCiQ3R4L7pfQpk9g",
            fromType:"微信用户",
            toId:"2",
            toType:"从业人员",
        }
        var str = JSON.stringify(json);
        websocket.send(str);
        document.getElementById('message').innerHTML += "我：" + '<br/>';
        document.getElementById('message').innerHTML += "<span style='color: #ff346a'>"+message+"</span>" + '<br/>';
    }

    //接收到消息的回调方法
    websocket.onmessage = function (event) {
        setMessageInnerHTML2(event.data);
        /**
         *
         * 从消息体判断该消息是否
         * 如果是， 则在当前聊天窗口追加消息；
         * 如果不是，则 1.在指定用户的新消息处红点标记
         *
         *
         *
         */
    }

</script>
<script src="./js/jquery-1.6.2.min.js" type="text/javascript"></script>
<script type="text/javascript">

  $("#out").click(function(){
      alert("ewrwrwer");
  });

</script>



</html>
