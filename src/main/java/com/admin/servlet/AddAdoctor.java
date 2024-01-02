package com.admin.servlet;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.AdoctorDao;
import com.db.DBconnect;
import com.entity.Adoctor;

@WebServlet("/addAdoctor")
public class AddAdoctor extends HttpServlet{

	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {

			String fullName = req.getParameter("fullName");
			String dob = req.getParameter("dob");
			String qualification = req.getParameter("qualification");

			String specialist = req.getParameter("specialist");

			String email = req.getParameter("email");
			String mobNo = req.getParameter("mobNo");
			String password = req.getParameter("password");

			Adoctor d = new Adoctor(fullName, dob, qualification, specialist, email, mobNo, password);

			AdoctorDao dao = new AdoctorDao(DBconnect.getConn());
			HttpSession session = req.getSession();

			if (dao.registerDoctor(d)) {
				session.setAttribute("succMsg", "Doctor Added Sucessfully..");
				resp.sendRedirect("admin/Adoctor.jsp");
			} else {
				session.setAttribute("errorMsg", "something wrong on server");
				resp.sendRedirect("admin/Adoctor.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	
}
