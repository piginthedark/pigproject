package cn.edu.nsu.bookshop.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.edu.nsu.bookshop.db.last.roles.Roles;
import cn.edu.nsu.bookshop.db.last.roles.RolesDAO;

/**
 * Servlet implementation class RolesServlet
 */
@WebServlet("/RolesServlet")
public class RolesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RolesServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		System.out.println("doGet");
		RolesDAO rolesDAO = new RolesDAO();
		String pathInfo = request.getPathInfo();
		System.out.println("pathInfo="+pathInfo);
		try {
			if("/List".equals(pathInfo)){
				 
				ArrayList<Roles> roles = rolesDAO.getAll();
				request.setAttribute("roles",roles);
				request.getRequestDispatcher("/pages/admin/roles/list.jsp").forward(request, response);
			}
			else if("/OpenModify".equals(pathInfo)) {
			
				
			   String roles_idStr = request.getParameter("roles_id");
			   
			   
		       int roles_id = Integer.parseInt(roles_idStr);
		       
		       
		      
		       
		       Roles role = rolesDAO.getById(roles_id);
		      
		       request.setAttribute("role", role);
		       
		       request.getRequestDispatcher("/pages/admin/roles/modify.jsp").forward(request, response);
		       
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
		try {
			rolesDAO.release();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
