package com.patient.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.PatientDao;
import com.db.DBconnect;
import com.entity.Adoctor;
import com.entity.Patient;

@WebServlet("/PatientLogin")
public class PatientLogin extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
try {
			
			String email=req.getParameter("email");
			String password=req.getParameter("password");
			
			HttpSession session = req.getSession();
			
			
			PatientDao dao= new PatientDao(DBconnect.getConn());
			Patient patient = dao.login(email, password);
			
			if(patient!=null) {
				session.setAttribute("patientObj", patient);
				resp.sendRedirect("PatientIndex.jsp");
			}
			else {	
				session.setAttribute("errorMsg", "Invalid");
				resp.sendRedirect("patientLogin.jsp");
			}
		} catch (Exception e) {	
			e.printStackTrace();
		}
	}	
}