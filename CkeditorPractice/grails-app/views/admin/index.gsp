<%--
  Created by IntelliJ IDEA.
  User: saneel
  Date: 1/6/18
  Time: 7:57 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <ckeditor:resources/>
    <g:javascript library="jquery"/>
    <r:layoutResources/>
</head>

<body>

<g:if test="${role=="admin"}">
    <ckeditor:editor name="myeditor" height="400px" width="80%">
        abc
    </ckeditor:editor>

    <input type="submit" id="save" value="save" onclick="saveData();"/>
    //test push

</g:if>

<g:if test="${role=="user"}">
    <p>${u.email}</p>
</g:if>





<g:javascript>
    function saveData(){
    //myeditor = ckeditor name
        var data = CKEDITOR.instances['myeditor'].getData();

        $.ajax({
        //hijo duita mistake vayeko thiyo
        //1 eslai quote vitra rakhnu parne rakhko thiyena
        //2 mathi jquery ko path diyeko thiyena %{--<g:javascript library="jquery"/>--}%
           url:"${createLink(controller: 'Admin',action: 'saveData')}",
            type:"post",
            data:{d:data},
            success: function (response) {
            console.log("in response");
                console.log(response);
            }
        });
    }
</g:javascript>
<r:layoutResources/>

</body>
</html>