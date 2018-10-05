<%-- 
    Document   : update
    Created on : 05-Oct-2018, 06:00:47
    Author     : teju
--%>

<%@page import="com.tej.project.model.Employees"%>
<%@page import="com.tej.project.service.EmployeeService"%>
<%@page import="com.tej.project.dao.EmployeeDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update</title>
    </head>
    <body>
        <%
            EmployeeDao empDao = new EmployeeService();
            Employees emp = new Employees();
            int id = Integer.valueOf(request.getParameter("id"));
            Employees emp1 = empDao.findById(id);
            emp.setId(emp1.getId());
            emp.setFname(request.getParameter("fname"));
            emp.setLname(request.getParameter("lname"));
            emp.setDesignation(request.getParameter("designation"));
            //int pay = Integer.valueOf(request.getParameter("salary"));
            emp.setPay(request.getParameter("salary"));
            emp.setDepartment(request.getParameter("department"));
            //RequestDispatcher rd = request.getRequestDispatcher("/all-booking.htm");
            empDao.Update(emp);
            response.sendRedirect("Employees.htm");
            //rd.forward(request, response);
        %>
    </body>
</html>
