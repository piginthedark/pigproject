package cn.edu.nsu.bookshop.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.edu.nsu.bookshop.db.last.roles.Roles;
import cn.edu.nsu.bookshop.db.last.roles.RolesDAO;
import cn.edu.nsu.bookshop.db.last.users.Users;
import cn.edu.nsu.bookshop.db.last.users.UsersDAO;

/**
 * Servlet implementation class UserServlet
 */
//@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String pathInfo = request.getPathInfo();
			 UsersDAO usersDAO = new UsersDAO();
//			System.out.println(pathInfo);
			 try {
			 if("/List".equals(pathInfo)) {
				  
				
				    	//处理查询请求
				  
					ArrayList<Users> users = usersDAO.getAll();
					
				
				//数据共享
				request.setAttribute("users", users);
				//请求派发交给jsp
				request.getRequestDispatcher("/pages/admin/users/list.jsp").forward(request, response);//获取事件派发器
				
				
			}
			else if("/OpenModify".equals(pathInfo)) {
				
				String users_idStr = request.getParameter("users_id");
              	int users_id = Integer.parseInt(users_idStr);
              	
              	
              
              	Users user =  usersDAO.getById(users_id);
              	
              	
              	 RolesDAO rolesDAO = new RolesDAO();
				  ArrayList<Roles> roles = rolesDAO.getAll();
				  
				  request.setAttribute("roles", roles);
				  request.setAttribute("user", user);
				  request.getRequestDispatcher("/pages/admin/users/modify.jsp").forward(request, response);
			}
			else if("/Modify".equals(pathInfo)) {
				 //处理用户修改表单功能
				
				//处理请求
				 request.setCharacterEncoding("utf-8");
				    //从请求获得更新后的用户数据
				    String users_id=request.getParameter("users_id");
				    String users_password=request.getParameter("users_password");
				    String users_sex=request.getParameter("users_sex");
				    String users_idNum=request.getParameter("users_idNum");
				    String roles_id=request.getParameter("roles_id");
				    String users_mobile=request.getParameter("users_mobile");
				    String users_name=request.getParameter("users_name");
				    String users_address=request.getParameter("users_address");
				    String users_postcode=request.getParameter("users_postcode");
				    String users_portraitImg=request.getParameter("users_portraitImg");
				    //将更新后的users数据更新到users表中对应数据
				    
				    Users users = new Users();
				    users.setRoles_id(Integer.parseInt(roles_id));
				    users.setUsers_address(users_address);
				    users.setUsers_id(Integer.parseInt(users_id));
				    users.setUsers_idNum(users_idNum);
				    users.setUsers_mobile(users_mobile);
				    users.setUsers_name(users_name);
				    users.setUsers_password(users_password);
				    users.setUsers_portraitImg(users_portraitImg);
				    users.setUsers_postcode(users_postcode);
				    users.setUsers_sex(users_sex);
				    
				    usersDAO.modify(users);
				//共享处理数据结果
				//请求派发
				    request.getRequestDispatcher("/pages/admin/users/modifySuccess.jsp").forward(request, response);
				    
			}
			else if("/OpenAdd".equals(pathInfo)) {
				 
			}
			else if("/Add".equals(pathInfo)) {
				 
			}
			else if("/Delet".equals(pathInfo)) {
				 
			}
			else if("/Detail".equals(pathInfo)) {
				 
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
						usersDAO.release();
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
