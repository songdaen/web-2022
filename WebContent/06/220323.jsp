<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>220324</title>
</head>
<body>

<form action="4-5.jsp">
    <table>
        <tr>
            <td>���̵�</td>
            <td><input name="id"></td>
        </tr>

        <tr>
            <td>��й�ȣ</td>
            <td><input name="pw" type="password"></td>
        </tr>
        <tr>
            <td>����</td>
            <td>
                <input type="radio" value="��" checked>��
                <input type="radio" value="��">��
            </td>
        </tr>
        <tr>
            <td>���԰��</td>
            <td>
                <select>
                    <option value="���˻�" selected>���˻�</option>
                    <option value="���μҰ�">���μҰ�</option>
                    <option value="��Ÿ">��Ÿ</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>�ּ���</td>
            <td>
                <select size="4">
                    <option selected>����</option>
                    <option value="���">���</option>
                    <option>��õ</option>
                    <option value="��Ÿ">��Ÿ</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>�޸�</td>
            <td>
                <textarea rows="4"></textarea>
            </td>
        </tr>
    </table>
    <input type="submit" value="����">
</form>

</body>
</html>