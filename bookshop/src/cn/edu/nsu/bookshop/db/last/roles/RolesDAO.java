/**
 * 
 */
package cn.edu.nsu.bookshop.db.last.roles;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import cn.edu.nsu.bookshop.db.last.DBMain;


/**
 * @author Lenovo
 *
 */
public class RolesDAO extends DBMain<Roles>{

	public ArrayList<Roles> getAll() throws ClassNotFoundException, SQLException {
		
		String sql = "select * from roles";
		pst = getPrepareStatement(sql);
		rst = pst.executeQuery();
		ArrayList<Roles> roles = new ArrayList<Roles>();
		while(rst.next()) {
			roles.add(assemble(rst));
		}
		return roles;
		
	}
	
	public Roles getById(int id) throws ClassNotFoundException, SQLException {
		System.out.println(id);
		String sql = "select * from roles where roles_id=?";
		pst = getPrepareStatement(sql);
		pst.setInt(1, id);
		rst = pst.executeQuery();
		Roles role = null;
		while(rst.next()) {
			System.out.println("jingru");
			 role = assemble(rst);
		 }
		
		
		 return role;
	}
	
	public void add(Roles dataObj) throws ClassNotFoundException, SQLException {

		String sql = "INSERT into users(roles_id,roles_name,roles_note) VALUES(?,?,?)";
		pst = getPrepareStatement(sql);
		pst.setInt(1,dataObj.getRoles_id());
		pst.setString(2, dataObj.getRoles_name());
		pst.setString(3, dataObj.getRoles_note());
	    pst.executeUpdate();
	
	}
	
	public void modify(Roles newDataObj) throws ClassNotFoundException, SQLException {

		String sql = "update roles set roles_id=?,roles_name=?,roles_note=? where users_id=?";
		pst = getPrepareStatement(sql);
		pst.setInt(1,newDataObj.getRoles_id());
		pst.setString(2, newDataObj.getRoles_name());
		pst.setString(3, newDataObj.getRoles_note());
		pst.setInt(10, newDataObj.getRoles_id());
	    pst.executeUpdate();	
	
	}
	
	public void delete(int id) throws ClassNotFoundException, SQLException 
	{
		String sql = "DELETE FROM roles WHERE roles_id=?";
		pst = getPrepareStatement(sql);
		pst.setInt(1,id);
	    pst.executeUpdate();	
	}

	public Roles assemble(ResultSet rst) throws SQLException {

		Roles role = new Roles();
		role.setRoles_id(rst.getInt("roles_id"));
		System.out.println("jingr");
		role.setRoles_name(rst.getString("roles_name"));
		System.out.println("jing");
		role.setRoles_note(rst.getString("roles_note"));
		System.out.println("jingru1");
		
		return role;
	
	}
	
	
}
