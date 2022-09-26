<%@ page import="java.util.List" %>
<%@ page import="com.example.model.Client" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <style>
        img { width:120px; height:180px; }
        h2{
            font-size: 18px;
            color: #4a9ca5;
            padding: 10px 20px;
            text-transform: uppercase;
            border: 1px solid #bebebe;
            display: inline-block;
            color: #555;
            font-weight: 600;
            background-image: linear-gradient(to top, #dfe9f3 0%, #7c9362 100%);
        }
        table,td,th{
            border: 1px solid rgb(108, 169, 175);
            border-collapse: collapse;
        }
        th,td {
            padding: 5px;
        }
        th{
            background-color: rgb(101, 187, 176);
        }
    </style>
</head>
<body>
<%
    List<Client> clientList = new ArrayList<>();
    clientList.add(new Client("Hân","22/10/1996","Ninh Bình", "https://scontent-hkt1-1.xx.fbcdn.net/v/t39.30808-6/304020456_104883219028767_3061549050609639288_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=Hli0FCcX4_8AX8uSWaN&_nc_ht=scontent-hkt1-1.xx&oh=00_AT_9k9Bp9eTTBwHHUwn8pPvkawot1lLq3l0SrNQFsKUjEw&oe=63372E94"));
    clientList.add(new Client("Tuấn","4/8/1998","Hà Nội", "https://zpsocial-f49-org.zadn.vn/b3ce2ec2bc25537b0a34.jpg"));
    clientList.add(new Client("Vinh","27/11/1996","Hà Nội", "https://andy.codegym.vn/storage/images/avatars/3d09d746d8cadd3c9e5b32a0710b23d9.png"));
    clientList.add(new Client("Phong","27/4/1996","Quảng Ninh", "https://t-f45-zpg-r.zdn.vn/480/3985592971282477452/c47a78a67337b669ef26.jpg"));
    request.setAttribute("clientList",clientList);
%>

<table>
        <h2> Danh sách khách hàng </h2>

    <div>
        <tr>
            <th> Tên </th>
            <th> Ngày sinh </th>
            <th> Địa chỉ </th>
            <th> ảnh </th>
        </tr>
    </div>

           <c:forEach items ="${clientList}" var = "client">
               <tr>
                   <td> ${client.getName()} </td>
                   <td>${client.getAge()}</td>
                   <td>${client.getAddress()}</td>
                   <td ><img src="${client.getImage()} "></td>
               </tr>
           </c:forEach>



</table>


</body>
</html>