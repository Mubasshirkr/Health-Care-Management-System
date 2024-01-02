package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.text.html.HTMLDocument.HTMLReader.SpecialAction;

import com.dao.SpecialistDao;
import com.db.DBconnect;

@WebServlet("/addSpecialist")
public class AddSpecialist extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String specName = req.getParameter("specName");
		
		SpecialistDao dao = new SpecialistDao(DBconnect.getConn());
		boolean f = dao.addSpecialistDao(specName);
		
		HttpSession session = req.getSession();
		
		if(f) {
			session.setAttribute("succMsg", "Specialist Added" );
			resp.sendRedirect("AdminIndex.jsp");
		}
		else {
			session.setAttribute("errorMsg", "Something wrong on Server");
			resp.sendRedirect("AdminIndex.jsp");
		}
		
	}
	
	
	
}
