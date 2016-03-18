<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%!
// �T�[�u���b�g��init���\�b�h�ɑ���
public void jspInit() {
    try {
        // JDBC�h���C�o�����[�h
        Class.forName("com.mysql.jdbc.Driver");
    } catch (Exception e) {
        e.printStackTrace();
    }
}
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Hello</title>
</head>

<body>
<h1>Hello</h1>

<h1>ENV_VAR is <%= System.getenv("ENV_VAR")%></h1>

<%
//        String host = "localhost";
//        String db_user = "root";
//        String db_password = "password";
//        String db_name = "mydb";

        // DB�ڑ��p�̊��ϐ��擾
        String host = System.getenv("HELLO_JAVA_MYSQL_SERVICE_HOST");
        String db_user = System.getenv("MYSQL_USER");
        String db_password = System.getenv("MYSQL_PASSWORD");
        String db_name = System.getenv("MYSQL_DATABASE");

        // �f�[�^�x�[�X�ւ̃A�N�Z�X�J�n
        Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;
        try {
            // �f�[�^�x�[�X�ɐڑ�����Connection�I�u�W�F�N�g�̎擾
            con = DriverManager.getConnection(
                "jdbc:mysql://" + host + "/" + db_name,
                db_user, db_password);
            // �f�[�^�x�[�X������s�����߂�Statement�I�u�W�F�N�g�̎擾
            stmt = con.createStatement();
            // SQL()�����s���āA���ʂ𓾂�
            rs = stmt.executeQuery(
              "select 1");

            // ����ꂽ���ʂ����R�[�h���Ƃɕ\��
            while (rs.next()) {
%>

<%= rs.getString("1")%>

<%
            }

        } catch (Exception e) {
%>
            <%= e.getMessage() %>
<%
            e.printStackTrace();
        } finally {
            // �f�[�^�x�[�X�Ƃ̐ڑ����N���[�Y
            try { rs.close(); } catch (Exception e) {}
            try { stmt.close(); } catch (Exception e) {}
            try { con.close(); } catch (Exception e) {}
        }
%>

 <h1><a href="./index.html">Return to Home</a></h1>

</body>
</html>
