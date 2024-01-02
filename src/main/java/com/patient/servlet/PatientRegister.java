package com.patient.servlet;

import java.io.IOException;
import java.nio.file.attribute.AclEntry;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.PatientDao;
import com.db.DBconnect;
import com.entity.Patient;

@WebServlet("/patientRegister")
public class PatientRegister extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String name=req.getParameter("name");
			String email=req.getParameter("email");
			String password=req.getParameter("password");
			
			
			Patient p=new Patient(name, email, password);
			
			PatientDao dao= new PatientDao(DBconnect.getConn());
			
			HttpSession session=req.getSession();
			
			boolean f=dao.patientSignup(p);
			
			if(f) {
				
				session.setAttribute("sucMsg", "Patient Register successfull");
				resp.sendRedirect("patientLogin.jsp");

			}else {
				session.setAttribute("errorMsg", "Something wrong on server");
				resp.sendRedirect("patientLogin.jsp");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}